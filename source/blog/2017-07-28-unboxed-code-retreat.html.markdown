---
title: Code Retreat - Unboxed Style
date: '2017-07-28 15:23:47 UTC'
authors:
  - Elena Tanasoiu
  - Chris Holmes
tags:
  - Culture
  - Innovation
main_image: "https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/56fd553b3324e66497fd76de9d6bfb0c.jpg"
published: true
---

![Settling in](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/56fd553b3324e66497fd76de9d6bfb0c.jpg)

A [code retreat](http://coderetreat.org/) is an intensive, one day practice event whereby developers try different approaches to
implementing a task following a specific set of guidelines. In our case, our code retreat consisted of 5 of one-hour sessions.
In each session we would complete our solution, after which we would discard it (yes, really) and start again with different constraints.

The point of a code retreat is to get a chance to practice programming concepts while being away from the pressures of deadlines
and business requirements. At the same time, the encouragement to discard your solution after each iteration helps you focus on applying
a different technique every time, rather than improving an existing solution.

# Our challenge for this code retreat

We chose [Conway's "Game of life"](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) as our challenge for that day.
"The Game of Life", also known as simply "Life", is a
mathematical automaton that plays out with only an initial input from the user. The universe of "Life" is a
two-dimensional orthogonal grid of cells, each of which can be either alive or dead. Every cell interacts with
its eight neighbors. At each step, there are four possible transitions for a cell:

1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
2. Any live cell with more than three live neighbours dies, as if by overcrowding.
3. Any live cell with two or three live neighbours lives on to the next generation.
4. Any dead cell with exactly three live neighbours becomes a live cell.

The initial state of the grid is the seed of the system. Applying the rules above to every cell simultaneously will yield the next generation.

![Lunchtime](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/1fb76e4248cfa1df86bfcfae38981643.jpg)

# Starting small

We started out with little idea of how the day would go. Our first couple of attempts at writing
the game on screen was a sort of warm up for what would come next: putting various restrictions
on ourselves in order to challenge the way we could complete Conway's game of life once we
got our first solution down.

![It lives](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/130ce32da3f5cc07182fafed8a8d6590.png)

We suggested some conditions that could be imposed for a solution:

* Program like it's 1969 (compilation is expensive, run the code only twice, pay attention to syntax)
* No return values
* Primitives can't cross method boundaries
* Don't pass parameters
* Write it in a different language
* Write methods with a maximum of three lines

We then voted on which approaches we'd like to try for the rest of the day. We chose the following: primitives can't cross method boundaries, methods
no longer than three lines, write it in a different language.

1) Primitives can't cross method boundaries

On our first iteration we tried to get our heads around the concept of sending messages
between methods without using primitives. We focused on the mutability of the data and how we could
get away with computing the next generation's mutation.

2) Methods no longer than 3 lines

This was a nice respite from the previous challenge. It was cool to see just how much brevity could be
used to push our code to it's shortest length.

3) Write it in a different language

The languages we chose were Javascript, MoonScript, Clojure and Kotlin. It seemed that flipping the language was a
nice way to end the day, as it didn't require as much concentration as trying to avoid primitives. At the same
time it was refreshing to start anew with a language where syntax can make a big difference to your output
(e.g. Clojure, which has Polish notation). Kotlin seemed to pose some problems as it wasn't as good at outputting
generational mutations on screen as easily as Ruby. Finally, MoonScript sounded like the new kid on the block and some of our devs seemed to enjoy discovering it.

# Finishing with a retrospective

To end the day we had a retrospective in order to better understand what worked and what didn't with a view to making the next code retreat even better.
We had three questions to get us thinking, "What surprised you?", "What did you learn?" and "What would you do differently?".

![Retrospective](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/a90dc73f098673e1b1b967320542c2f2.jpg)

The feedback showed the event was a success, we all enjoyed it and had opportunity to learn something new and get to work with fellow Unboxeders, win win! Most importantly we recognised our
mistakes which will help us improve the next time round.

The voting on the conditions didn't work so well, some of them were similar and we felt it
would have been better if they were chosen ahead of time with thought given to the different ways of thinking they would encourage. We also allowed ourselves to
go a little over time for each challenge if we were enjoying ourselves or close to completing the solution, in hindsight if we were stricter it would have allowed
us to attempt more of the conditions. Finally we did a bad job at ordering food so were all pretty hungry when it turned up mid-afternoon!
