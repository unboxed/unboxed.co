---
weekly_roundup: true
date: "2012-07-26 23:00:00 UTC"
published: true
title: "The Week In Bitesize Chunks"
author: "Andrew Mitchell"
tags:
  - Rails
---

This week's beauties for your perusal.

##ActiveRecord Method of the Week: [touch](http://api.rubyonrails.org/classes/ActiveRecord/Persistence.html#method-i-touch)

After realising I had forgotton this little nugget of the newseletter I panicked realising I couldn't think of anything interesting off the top of my head. I scoured the Rails docs to see if there was anything better than showing you all how to use 'find'!

So, what I realised is knew of this method however I didn't spot some of the contexts in which it could be used. The touch method can be used quite simply to 'touch' an ActiveRecord model and update its udpated_at/_on attribute. We can also pass an attribute to the method to specify which column we would like to update. So here's the cool bit. Got nested models you want to update too? Add :touch to your relationship and POW! You can invoke touch on your related models too with very little extra work.

    class User < ActiveRecord::Base
      has_one :oauth_authentication, :touch => false
    end

    class OauthAuthentication < ActiveRecord::Base
      belongs_to :user, :touch => true
    end

So in our example everytime our user updates something to do with their OauthAuthentication a user will also have the updated at attribute reset.

##Meatier Content (Andrew M)
[http://baconipsum.com/](http://baconipsum.com/)

For those of you non-veggies who prefer a bit of meat to your content!


##SSHpocolypse (Andrew M)
[https://github.com/blog/1212-surviving-the-sshpocolypse](https://github.com/blog/1212-surviving-the-sshpocolypse)

An interesting article this morning posted on the Github blog regarding issues with their SSH infrastructure.

##Evolution of the Web (Rich A)
[http://www.evolutionoftheweb.com/](http://www.evolutionoftheweb.com/)

Crazy immersive infographic outlining all the key players and events that have made the web what it is today.


##Yet-another-mockup tool of the week (Rich A)
[http://www.fluidui.com/](http://www.fluidui.com/)

Specialises in quickly slapping together mockups of mobile interfaces for iOS and Android.

##OSX Mountain Lion Survival Guide (Shaban K)
[http://gizmodo.com/5928208/the-os-x-mountain-lion-survival-guide](http://gizmodo.com/5928208/the-os-x-mountain-lion-survival-guide)

##Leo Cassarani on Chef

For those who missed last nights talk, Leo showed us all a little about chef

##OAuth 2 drafts ..continued (Murray S)
First up, there's a distillation of the current draft written by [James Coglan](http://jcoglan.com/): [https://gist.github.com/3054344](https://gist.github.com/3054344) - as one of the devs responsible for [https://github.com/songkick/oauth2-provider](https://github.com/songkick/oauth2-provider) it's worth reading his thoughts on the protocol.

Then there's the real big news about Oauth2 this week:
[http://hueniverse.com/2012/07/oauth-2-0-and-the-road-to-hell/](http://hueniverse.com/2012/07/oauth-2-0-and-the-road-to-hell/) - one of the main authors gives up on it as being "WS-* bad" and "the biggest professional disappointment of [his] career".
