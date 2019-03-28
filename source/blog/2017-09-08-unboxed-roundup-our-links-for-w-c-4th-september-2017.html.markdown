---
weekly_roundup: true
title: 'Roundup: payment gateway vulnerabilities, broken phone screens, and character encodings'
date: '2017-09-08 13:00:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Vulnerabilities in online payment gateways - [Abraao M](/people#abraao-mota)

http://tinyhack.com/2017/09/05/mastercard-internet-gateway-service-hashing-design-flaw/

An interesting article about someone who finds 2 very serious bugs in the
mastercard hashing system that would allow you to bypass transaction values
completely. You'd think he'd get a fair remuneration for his bug-finding work
but it's in fact quite disappointing given the severity of the issues. Just
makes you think about how many white-hat hackers eventually leave their hats
at home because the dark side is much more lucrative.

## Cracked your screen? Better get a whole new phone… - [Abraao M](/people#abraao-mota)

https://arstechnica.co.uk/information-technology/2017/08/a-repair-shop-could-completely-hack-your-phone-and-you-wouldnt-know-it/

Some researchers show how easy it is to install hardware that completely
hijacks your phone, from app installation, to stroke logging and camera
usage. As someone who has never cracked my screen to the point of getting
it repaired at a 3rd party, it has never crossed my mind how much trust we
put in the corner shops to fix our phones. It might not even be malicious
on their part, but it shows that even they might not know the new screen
they're installing could be logging your every move into the internet.

## Going deep on character encodings - [Murray S](/people#murray-steele)

http://kunststube.net/encoding/

If you've written a web application running ontop of mysql chances are
you'll have encountered a bunch of character encoding problems in one or
more of your environments.  Most frameworks do a good job these days of
trying to make sure they treat everything as utf-8, but if your DB is set
up to store the data as, for example `latin1_swedish_ci`, then things
might go wrong as soon as you start introducing characters not included
in ascii.  This article goes deep on exactly what character encodings
are, how they came about, and why treating the raw bytes as different
encodings can cause problems.  It finishes with a section on how to
avoid the problems in php, which the author suggests you skip if you're
not using php, but I found it to be useful as the problems and workarounds
are pretty universal.

## Track of the Week - [Jack B](/people#jack-bracewell)

Nuclear War, Mass flooding, Hurricanes, Earthquakes; and now
[Anissa](/people#anissa-said) is leaving us!

<iframe width="560" height="315" src="https://www.youtube.com/embed/Z0GFRcFm-aY" frameborder="0" allowfullscreen></iframe>

[R.E.M. - It's the end of the world](https://www.youtube.com/watch?v=Z0GFRcFm-aY)
