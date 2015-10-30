---
date: "2014-04-15 14:28:00 UTC"
published: true
title: "OpenSSL::SSL::SSLError: certificate verify failed "
author: "Karl Entwistle"
tags:
  - Rails
---

Sometimes you will inherit a ‘legacy system’. This particular system was running Ubuntu 8.04 LTS and Rails 2.3.18. Due to the recent Heartbleed security hole, the applications OAuth provider had updated their security certificates. This meant I was now getting an error and stacktrace, with the rescue message: ‘OpenSSL::SSL::SSLError: certificate verify failed’.

## Reproduce the error
You can use the [doctor.rb](http://raw.githubusercontent.com/mislav/ssl-tools/8b3dec4bedcc725a142fa9bc297610f8d09f5d9d/doctor.rb) script by issuing the following commands ‘ruby doctor hostname’.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=Using the doctor script"></script>

On the client's server https://google.com is working but https://facebook.com is returning a very strange error.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=Output from doctor"></script>

## Attempt to upgrade

<script src="https://gist.github.com/karlentwistle/10739717.js?file=Update install packages"></script>

Normally this would utilise the package manager ‘apt’ to fix the issue. However, if you’re running Ubuntu 8.04 LTS you’re quickly going to find that the ‘Long Term Support’ is over. And all the packages are returning a 404.

You're on your own now...

Take a moment to contemplate your predicament.

## Remove Ruby from the equation

At this point I want to establish if the error is limited to my installation of Ruby or whether it's a deeper problem. So I drop out the entire Ruby stack and use another application. 'wget' or 'curl' will do. I used curl.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=curl facebook"></script>

## Figure out what certificates you’re missing

In order to find out exactly which certificates are missing you'll want to utilize OpenSSL’s [s_client](http://www.openssl.org/docs/apps/s_client.html). You’ll see the chain of certificates (or lack of them, in my case) back to the original certificate authority.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=openssl s_client -connect facebook"></script>

From this output you can see I'm missing the following certificates:

i:/C=US/O=DigiCert Inc/OU=www.digicert.com/CN=DigiCert High Assurance CA-3
i:/C=US/O=DigiCert Inc/OU=www.digicert.com/CN=DigiCert High Assurance EV Root CA

## Install the certificates

For this client the digicerts are out of date. A Google search later and I’d found them: https://www.digicert.com/digicert-root-certificates.htm

I grabbed the certificates required.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=grab the certs"></script>
Unfortunately these are encoded and need to be converted into text.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=convert encoded .crt to plaintext .crt"></script>
Now move these ca-certificates into your trusted /usr/share/ca-certificates folder.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=move the certs"></script>

In order to let Ubuntu know where to find the new certificates I add the '.crt' file's path relative to /usr/share/ca-certificates to /etc/ca-certificates.conf

With this in mind I append the contents of /etc/ca-certificates.conf with:

<script src="https://gist.github.com/karlentwistle/10739717.js?file=append crt"></script>

The final step is running [c_rehash](http://www.tin.org/bin/man.cgi?section=1&topic=c_rehash) within /etc/ssl/certs to scan directories and take a hash value of each '.pem' and '.crt' file in the directory. It then creates symbolic links for each of the files named by the hash value. Programs on the system (like curl or wget) expect to find the certificates they require in this c_rehash'ed format.

<script src="https://gist.github.com/karlentwistle/10739717.js?file=rehash"></script>

## Test

I go back to the doctor.rb and run it again.

Success! We have the updated certificates available!

<script src="https://gist.github.com/karlentwistle/10739717.js?file=successful ruby doctor"></script>

If you're reading this blog post and have a similar issue with a different certificate, this askubuntu post may also help: http://askubuntu.com/questions/73287/how-do-i-install-a-root-certificate

Happy Heartbleed!
