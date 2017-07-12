---
date: '2017-07-11 13:30 +0100'
published: true
title: 'Brighton Ruby 2017'
tags:
  - Culture
  - Innovation
authors:
  - 'Neil van Beinum'
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/brighton-ruby-2017-outdoors.jpg
---

On Friday 7th July, a small crowd of developers from Unboxed made their way south to the coastal town of Brighton for its fourth annual Ruby conference: [Brighton Ruby 2017](https://brightonruby.com/).

![Brighton Ruby 2017 - Unboxed developers inside the conference venue](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/brighton-ruby-2017-audience.jpg)

Presentations at this one day, single track conference covered a broad range of topics including Ruby language features, debugging tips, music generation, inclusion and psychology as well as many others. This post outlines a selection of our impressions from the day.

## [Vinul W](/people#vinul-wimalaweera)

Conference pick: [Ruby Paper Scissors - Dot Wingrove](https://brightonruby.com/2017/ruby-paper-scissors-dot-wingrove/)

This talk focussed on the techniques utilised in code to win Rock Paper Scissors. The talk was interesting, utilising the case study of Iocaine Powder which won the Rock Paper Scissors bot championship in 1999. It was interesting to see how the bot grew from a simple bot that only outputted one result to one of increasing complexity that could recognise patterns in its opponents gameplay.

## [Tom S](/people#tom-sabin)

Conference pick: [Can My Friends Come Too? - Andrew Nesbitt](https://brightonruby.com/2017/can-my-friends-come-too-andrew-nesbitt/)

[Talk slides available here](https://speakerdeck.com/andrew/can-my-friends-come-too)

This talk about open source was very enjoyable, not just because it had puppies in it, but because it covered a lot of hidden costs of using open source software. The comparison between adopting a pet and adopting software was throughout the talk; refactoring was compared to grooming, where in 6 months time, it was back to a similar state as before. In summary, open source is "free as in puppy":

- Maintenance: looking after your new pet
- Security: dogs must be kept on a lead at all times
- Unlicensed code: like walking someone else's dog without permission
- Sustainability: how are you going to pay for the dog food?

Final thoughts were "a puppy is for life, not just for Christmas" and that you should _vet_ your dependencies before using them.

I learnt of a new gem, [LicenseFinder](https://github.com/pivotal/LicenseFinder), to detect the licenses of all dependencies. We also briefly covered [bundler-audit](https://github.com/rubysec/bundler-audit) to check for vulnerabilities which we already have configured in our CircleCI builds.

## [Abraao M](/people#abraao-mota)

Conference pick: [Ruby Paper Scissors - Dot Wingrove](https://brightonruby.com/2017/ruby-paper-scissors-dot-wingrove/)

I really enjoyed the Rock-Paper-Scissors talk - it delved into game-theory (one of my favourite topics in CS), and you could see that through some statistical analysis, move analysis over a certain window of time and meta-strategy analysis, you could create really interesting, award winning behaviour. To paraphrase one of her final sentences: Simple rules do not exclude the use of deep strategy.

![Brighton Ruby 2017 - Unboxed developers on the seafront](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/brighton-ruby-2017-seafront.jpg)

## [Murray S](/people#murray-steele)

I could recommend most of the talks from Brighton Ruby this year.  There was a really high standard and I got something out of most of them.  When the videos come out you wouldn't be wasting any time if you sat down and watched them all.  If you are a little time constrained then I'd suggest you watch opening keynote ["Lucky"](https://brightonruby.com/2017/lucky-saron-yitbarek/) by [Saron Yitbarek](https://twitter.com/saronyitbarek), ["Ruby Paper Scissors"](https://brightonruby.com/2017/ruby-paper-scissors-dot-wingrove/) by [Dot Wingrove](https://twitter.com/notthepoint), ["Debugging for New Developers"](https://brightonruby.com/2017/debugging-for-new-developers-ali-najaf/) by [Najaf Ali](https://twitter.com/alinajaf), ["This code sucks: A Story about non-violent communication"](https://brightonruby.com/2017/this-code-sucks-a-story-about-non-violent-communication-nadia-odunayo/) by [Nadia Odunayo](https://twitter.com/nodunayo), ["Eigen What now?"](https://brightonruby.com/2017/eigen-what-now-eliza-de-jager/) by [Eliza de Jager](https://twitter.com/code_kitten), and the closing keynote ["Livable Code"](https://brightonruby.com/2017/livable-code-sarah-mei/) by [Sarah Mei](https://twitter.com/sarahmei).  This is not to say none of the other talks were good, but these are the ones that stood out and gave me the most to think about.

Admittedly I'm recommending you watch roughly half of the talks, so this isn't going to save you much time.  If do you really only have a short while the one talk you absolutely should watch is ["Ruby Paper Scissors"](https://brightonruby.com/2017/ruby-paper-scissors-dot-wingrove/).  It's unlikely to be directly relevant to your day job, but for me that's exactly why I enjoyed it.  I watch (and enjoy) a lot of talks because they are good for me; they help me think about the code I'm working on right now, or they explain a topic I know I'm going to be using soon.  Dot's talk is nothing like that, it's a fun exploration of how to write a winning Rock, Paper, Scissors bot (with [a nice diversion into lizards](https://www.scientificamerican.com/article/mating-lizards-play-a-gam/)) something I'm extremely unlikely to do for a client.  What I enjoyed most was the slow build up to the realisation that there's no algorithm that'll help you win one game, but there are algorithms that'll help you win millions of games.  And maybe, just maybe, that kind of long term thinking is something I *can* use in my day job.

![Brighton Ruby 2017 - Unboxed developers outside the Brighton Pavilion](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/brighton-ruby-2017-outdoors.jpg)

## [Charlie E](/people#charlie-egan)

Conference pick: [Ruby Paper Scissors - Dot Wingrove](https://brightonruby.com/2017/ruby-paper-scissors-dot-wingrove/)

This talk was about the implementation for a Rock-Paper-Scissors bot called 'Iocaine Powder'. I think what was interesting about this talk for me was that it was possible to have a strategy that worked for a game that always appeared to be purely mind games and luck.

## [Neil vB](/people#neil-van-beinum)

Conference pick: [Can My Friends Come Too? - Andrew Nesbitt](https://brightonruby.com/2017/can-my-friends-come-too-andrew-nesbitt/)

[Talk slides available here](https://speakerdeck.com/andrew/can-my-friends-come-too)

This talk from the creator of [libraries.io](https://libraries.io/) highlighted the fact that our apps are built "on the shoulders of giants" and how we as developers are taking on a "responsibility of care" when we rely on third-party libraries. Statistics supporting the talk, such as an average of 52 gems used in Gemfile.lock files in open source projects, and that the vast majority of gems maintained by a sole developer, helped reinforce the message that we do not develop our apps in a vacuum. By using practical tips from this talk such as pruning unused dependencies, keeping gems up to date and using other tools which check licenses and security, we can give ourselves the best chances of keeping our app's "support network" as healthy as possible.

## [Elena T](/people#elena-tanasoiu)

Conference pick: [Debugging for New Developers - Najaf Ali](https://brightonruby.com/2017/debugging-for-new-developers-ali-najaf/)

I believe this talk would be useful for non-juniors as well. According to Najaf, these are the steps he normally takes when debugging a problem:

1. Read the error message
2. Google the error message
3. Read the documentation
4. Check the logs

Seems pretty simple right? And yet so many of us don't go through them. I know I'm guilty of being impatient and just aiming for a quick resolve. To prevent this, I usually try to stop myself from typing for a while and just do some quiet reasoning in my head.

Besides those steps, he recommends an alternative way to do rubber duck programming. Meaning you should open a text file and write it all down: what you tried, what pages you looked at, the error messages. This can help you clarify the ideas in your head just as well as explaining ideas to someone else. At the same time, if all else fails, you can also just share this document with a person that might be able to help.

I've decided to take Najaf's advice and change my rubber ducking behavior. Perhaps after seeing his talk you will too?

![Brighton Ruby 2017 - "Friday hug"](https://pbs.twimg.com/media/DEJKbyAXUAABj4g.jpg)
