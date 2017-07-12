---
date: "2015-01-26 01:50:00 UTC"
published: true
title: "Sending S/MIME encrypted emails with Action Mailer"
authors:
  - "Andrew White"
tags:
  - Rails
---

## Why send encrypted emails?

Most people are aware now that sending emails is somewhat akin to sending a postcard - pretty much everyone in the delivery chain is able to have a peek at your message. The only way to prevent this is to encrypt your message so that it appears as gobbledygook to anyone who tries to have a look. In addition to encrypting your email you'll also want to sign it as well to make sure that it hasn't been tampered with in transit.

The de-facto standard for encrypting and signing emails is [S/MIME][1], which has been around for well over a decade now and has wide support in email clients - the exception being the Google Mail web client but it does work fine when accessing Google Mail via IMAP with a client that supports S/MIME.

Support for S/MIME in Ruby comes as part of the OpenSSL standard library. It's very lightly documented but fortunately there's an [example of signing and encrypting][4] an email within the Ruby sample code.

## Getting started

The technique we will be using to send our encrypted emails is a rarely used feature in Action Mailer called [interceptors][2]. This feature allows you to hook into the email delivery before the email is sent, but after the email has been generated. The definition is straightforward with a single singleton method called `delivering_email`, e.g:

    class MessageInterceptor
      def self.delivering_email(message)
        message.to = ['test.user@ubxd.com']
      end
    end

    ActionMailer::Base.register_interceptor(MessageInterceptor)

There are some nifty tricks that can be performed using this feature, one of which is inlining CSS for HTML emails - see [premailer-rails][3] for more information on how to do this.

## Implementing the delivering_email method

Because of the way interceptors are implemented we have to mutate the message that's passed to our message, therefore we'll create an encrypted version of the message and
copy the body back onto the original message along with certain headers. The basic outline looks like this:

    require 'openssl'

    class MessageEncryptor
      class << self
        include OpenSSL

        def delivering_email(message)
          encrypted_message = sign_and_encrypt(message.encoded, message.to)
          overwrite_body(message, encrypted_message)
          overwrite_headers(message, encrypted_message)
        end

        private

        def sign_and_encrypt(data, recipients)
          encrypt(sign(data), certificates_for(recipients))
        end

      end
    end

Obviously we need to require the OpenSSL library and since all of the methods we'll be writing are singletons we can save writing `self.method` by using the `class << self` construct to define our methods on the singleton class. Some of the OpenSSL constants are quite deeply nested so we also include it in our singleton class to save some more writing.

We pass in `message.encoded` to our `sign_and_encrypt` method since the signing phase needs to work with the full message - headers and body.

## Signing the message

The first step in the process is to sign the message. This is done using the PKCS7 module from OpenSSL and looks like this:

    def sign(data)
      PKCS7.write_smime(PKCS7.sign(certificate, private_key, data, [], PKCS7::DETACHED))
    end

    def certificate
      @certificate ||= X509::Certificate.new(File.read(certificate_path))
    end

    def certificate_path
      Rails.root.join('config', 'server.pem')
    end

    def private_key
      @private_key ||= PKey::RSA.new(File.read(private_key_path))
    end

    def private_key_path
      Rails.root.join('config', 'server.key')
    end

The certificate is needed because it's sent as an attachment to the message so that the receiver will have a copy of it to verify the signature. The private_key is obviously used to generate the signature and the data argument is the full message with headers. The empty array is used to pass additional certificates - for example if you needed to send any additional intermediate certificates. The `PKCS7::DETACHED` constant just tells OpenSSL to use the form of S/MIME message where the certificate is sent as an attachement.

The `sign` method returns a PKCS7 object but that's of no use to us so we use the `write_smime` method to convert it into a familiar format.

We're just using a server-wide certificate and private key - however if you have a multi-tenant application it is straightforward to pull the date for these from an Active Record model.

## Encrypting the message

Now that we've got our signed message the next thing to do is to encrypt it which looks like this:

    def encrypt(data, certificates)
      Mail.new(PKCS7.write_smime(PKCS7.encrypt(certificates, data, cipher)))
    end

    def cipher
      @cipher ||= Cipher.new('AES-128-CBC')
    end

    def certificates_for(recipients)
      recipients.map do |recipient|
        X509::Certificate.new(File.read(certificate_path_for(recipient)))
      end
    end

    def certificate_path_for(recipient)
      Rails.root.join('config', 'certificates', "#{recipient}.pem")
    end

The first thing we need is to create X.509 certificates for each of the recipients. Again they're just being stored locally in the config directory but could quite easily be an attribute on a user model.

We pass the certificates along with our signed S/MIME data to the `encrypt` method which similar to the `sign` method returns a PKCS7 object which we convert to S/MIME data with the `write_smime` method. We then parse it using the `mail` gem (which is what powers much of Action Mailer) so that we can easily copy the body and required headers.

Just a small note about the `cipher` method - by default OpenSSL will using 40-bit RC2 for encrypting the message so it's a good idea to boost it to something more powerful but you may have to adjust it back down to Triple-DES for better compatibility with older mail clients.

## Overwriting the original message body and headers

Now that we have our signed and encrypted message the next thing we need to do is to replace the original body with the new body and replace some headers relating to content type, disposition and encoding like this:

    def overwrite_body(message, encrypted_message)
      message.body = nil
      message.body = encrypted_message.body.encoded
    end

    def overwrite_headers(message, encrypted_message)
      message.content_disposition = encrypted_message.content_disposition
      message.content_transfer_encoding = encrypted_message.content_transfer_encoding
      message.content_type = encrypted_message.content_type
    end

The `message.body = nil` is important so that the mail gem doesn't add the new body on as an attachement instead of replacing the body.

## Hooking in our interceptor

The last thing to do is to add our interceptor to the list of interceptors. This config option can be placed in `application.rb`, a environment file like `production.rb` or even a `config/initializers` file. My preference is to create an `email.rb` initializer and add the delivery method settings in there as well:

    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
      # SMTP settings
    }

    ActionMailer::Base.register_interceptor(MessageEncryptor)

The order of the interceptors is important and we need to make sure that ours will be the last one otherwise the signature will be invalidated (not to mention the likelihood of other interceptors choking on the encrypted data).

Once it's hooked in then it's completely transparent - you call your email delivery methods in the same way as you did previously:

    >> Notifications.send_invoice(order).deliver

Assuming that all the certificates are in place you should receive an email in short order that is both signed and encrypted. If you're having problems it's almost certainly a mismatch with the certificates - either the trust level of a self-signed certificate isn't high enough or the common name doesn't match the email address.

Here's the complete class:

    require 'openssl'

    class MessageEncryptor
      class << self
        include OpenSSL

        def delivering_email(message)
          encrypted_message = sign_and_encrypt(message.encoded, message.to)
          overwrite_body(message, encrypted_message)
          overwrite_headers(message, encrypted_message)
        end

        private

        def sign_and_encrypt(data, recipients)
          encrypt(sign(data), certificates_for(recipients))
        end

        def sign(data)
          PKCS7.write_smime(PKCS7.sign(certificate, private_key, data, [], PKCS7::DETACHED))
        end

        def encrypt(data, certificates)
          Mail.new(PKCS7.write_smime(PKCS7.encrypt(certificates, data, cipher)))
        end

        def cipher
          @cipher ||= Cipher.new('AES-128-CBC')
        end

        def certificate
          @certificate ||= X509::Certificate.new(File.read(certificate_path))
        end

        def certificate_path
          Rails.root.join('config', 'server.pem')
        end

        def private_key
          @private_key ||= PKey::RSA.new(File.read(private_key_path))
        end

        def private_key_path
          Rails.root.join('config', 'server.key')
        end

        def certificates_for(recipients)
          recipients.map do |recipient|
            X509::Certificate.new(File.read(certificate_path_for(recipient)))
          end
        end

        def certificate_path_for(recipient)
          Rails.root.join('config', 'certificates', "#{recipient}.pem")
        end

        def overwrite_body(message, encrypted_message)
          message.body = nil
          message.body = encrypted_message.body.encoded
        end

        def overwrite_headers(message, encrypted_message)
          message.content_disposition = encrypted_message.content_disposition
          message.content_transfer_encoding = encrypted_message.content_transfer_encoding
          message.content_type = encrypted_message.content_type
        end
      end
    end


The full class has been [posted it to a Gist][7] to make it easier for you to download and use within your application.

## Getting certificates

If you know what you're doing and are only interested in sending emails between yourselves then you can create your own CA (Certificate Authority) and issue your own S/MIME certificates but if you need to send your emails to other people outside of your company then you'll need a S/MIME certificate from a recognised CA - I've used [GlobalSign PersonalSign][5] certificates myself and they are reasonable value for money at £20 per year for the basic certificate. There are other CAs available - the [MozillaZine Knowledgebase][6] has a list of free options.

[1]: http://en.wikipedia.org/wiki/S/MIME
[2]: http://guides.rubyonrails.org/action_mailer_basics.html#intercepting-emails
[3]: https://github.com/fphilipe/premailer-rails
[4]: https://github.com/ruby/ruby/blob/v2_2_0/sample/openssl/smime_write.rb
[5]: https://www.globalsign.com/en/personalsign/
[6]: http://kb.mozillazine.org/Getting_an_SMIME_certificate
[7]: https://gist.github.com/pixeltrix/83e848eefd8f430df31e
