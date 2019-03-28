---
authors:
  - Charlie Egan
  - Ben Wong
tags:
  - Innovation
date: "2017-03-20 12:00 +0000"
published: true
title: "Deploying indigo-falcon to production!"
---

This isn't my idea (it's [Ben's](https://unboxed.co/people#ben-wong)) but I wanted to write it up because I think it's interesting.

I originally started this post in December as a fantasy story about train stations and animals of the Ark but couldn't get it to make sense. Hopefully this version will.

On the [Bookmetrix project](https://unboxed.co/product-stories/bookmetrix) we used a different process for managing our releases in git. We took feature branches from master and opened pull requests with a 'release branch' as the base. If a PR wasn't approved before it's base release was merged then it's base was moved to the branch for the next release instead.

Releases were named using the format `RCyyyymm_word`, e.g. `RC201612_tiger`. The word selected for the next release should begin with the next letter of the alphabet. We chose a different theme for each of the repos we were working on. For example, the frontend had adjectives while the API had animals. Once we'd had Aardvark or Apathetic we'd move on to Badger or Bermused and so on (though the two projects didn't need to be in sync). We found using these release names to reference different versions of the various apps on a number of remote repositories was much more 'ergonomic' than rattling off version numbers.

Once we'd merged features into a release branch; and tested them; it'd get merged to master and deployed to production.

**So why was this good?** I found it useful for organising features being worked on in parallel, if you didn't want to hold something up (or just keep it separate) you could forge a new release branch and open a pull request for your change there instead.

It's also useful to see what's on the various remotes (based on HEAD of the remote masters). If the merge commit for `RC201612_badger` was HEAD then that's the release on that remote. For me this felt more intuitive than tagging commits with version numbers; it felt like you got the version for free.

Also, choosing funny animals and adjectives is really fun! Describing the state of production with pairs like 'enthusiastic moth' or 'indigo falcon' never gets old.

p.s. Our definitive animal name source, [a-z-animals.com](https://a-z-animals.com/animals/pictures/X/), is running a little low on X-named animals - hit us up if you know any good ones!
