---
date: "2014-03-05 19:10:00 UTC"
published: true
title: "Haskell at the London Code Dojo"
authors:
  - "Henry Turner"
tags:
  - Innovation

---

[Sleepy Fox](https://twitter.com/sleepyfox) recently ran the London Code Dojo here at the [Unboxed](http://www.unboxedconsulting.com/) office. The evening's Dojo was based around a few parts of Day 1 of the Haskell section of [Seven languages in seven weeks](http://pragprog.com/book/btlang/seven-languages-in-seven-weeks). It was good fun and I recommend the next Dojo coming up!

One of the problems we attempted was, in my words, the following:

Given the colours black, white, blue, yellow and red, find all unique pair combinations ignoring the order of the colours within each pair.

So, examples of valid pairs are (black, black), (black, white), (yellow, red) etc. As for invalid pairs, we can have (black, blue) __or__ (blue, black) but not both. Ok.

Haskell syntax is pretty mind bending for my mushy human brain but the implementation for the colours problem turned out to be pleasantly readable!

	let colours = ["black", "white", "blue", "yellow", "red"]

	[(x,y) | x <- colours, y <- colours, x <= y ]

Being a Ruby developer I thought I'd set myself a mini-mission and have a crack in my language of choice...

	colours = ["black", "white", "blue", "yellow", "red"]

	colours.product(colours).map{|e| e.sort }.uniq

Hmm. The Haskell version was easier to read and seemed more 'mathsy' and declaritive with it's x <= y. Was it using some magical evaluation technique?

To understand the Haskell version better I went into the IRC room where they have a bot in there called @undo. It breaks up, or undoes, Haskell into it's de-sugared form. And...

	@undo  [(x,y) | x <- colours, y <- colours, x <= y ]

became...

	concatMap (\ x -> concatMap (\ y -> if x <= y then [(x, y)] else []) colours) colours

Ah. The undone version is more familiar to a Ruby programmer and of course, the magic isn't magic at all. My first Ruby attempt was a two step process. Create a big old array and then filter out the duplicates. My second attempt would be more like the Haskell.

	colours.flat_map{|x| colours.flat_map{|y| x <= y ? [[x, y]] : [] } }

Ta-da! Definitely not as nice to read as the Haskell but this Ruby version is functionally the same.

Mini-mission accomplished but as I reached the end I felt as though I had slightly missed the point as I tried to jam Haskell into my Ruby world. On the other hand, I certainly learnt something and perhaps for the masses that __is__ the point of Haskell?

Time to stick my head in a bucket of ice water I think...

[Haskell implementation with tests](https://github.com/sleepyfox/7L7W-Haskell/blob/master/day1/colours.hs)

[Ruby implementation with tests](https://gist.github.com/thehenster/9374235)

The next [London Code Dojo is on the 17th March](http://www.meetup.com/London-Code-Dojo/).
