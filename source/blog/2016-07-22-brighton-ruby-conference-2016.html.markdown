---
title: Brighton Ruby Conference 2016
date: '2016-07-22 10:00:53 UTC'
published: true
main_image: >-
  http://unboxed.co/assets/images/blog/Ruby_Team.png
tags:
  - Culture
  - Innovation
  - Rails
author: Jon Pepler
---
[Brighton Ruby](http://brightonruby.com/) is unsuprisingly a conference about Ruby based in Brighton, and organised by [@AndyCroll](https://twitter.com/andycroll). Being quite new to both Ruby and to Rails, a Ruby conference seemed like the perfect place to pickup a few tricks of the trade and see what's next for the language and community.

![The Ruby Conf Crew](/assets/images/blog/Ruby_Team.png)
*The Ubxd Ruby Conf team, from left to right: [Neil](https://unboxed.co/people#neil-van-beinum), Jon, [Murray](https://unboxed.co/people#murray-steele), [Chris](https://unboxed.co/people#chris-holmes), [Crystal](https://unboxed.co/people#chris-carter), Cale, [Ben](https://unboxed.co/people#ben-wong), and [Tom](https://unboxed.co/people#tom-sabin)*

# Talks Worth Talking About
## The Point of Objects / [John Cinnamond](https://twitter.com/jcinnamond)

>*"If procedural programming is so great, why don't I marry it?"*

John talked Object-Orientated Programming as "the art of deffered caring", emphasising that OOP is structured in a way that lets you focus solely on the logic required for a specific task, delegating out required but not strictly relevant logic for later.

This isn't just a concept for the average developer to consider, but paramount to the ease of use of a language. Most modern programming languages are not domain specifc, i.e. the developer and even the high level language should not have to consider the machine that code is running on, as lower level aspects handle machine-specific translations in compilation. John suggested that we have lost out on an even greater computer revolution due to developers caring too much about machine specific solutions.

![The Manchester Mark 1 Computer](/assets/images/blog/Manchester_Mark_1.jpg)
*Freddie Williams and Tom Kilburn*

Going back into the short but fascinating history of computing, John talked about the first computer that was able to store programs in digital memory, opening the door for more user readable representations of data. Created in 1948, "Baby", or the [Manchester Small Scale Experimental Machine](http://curation.cs.manchester.ac.uk/computer50/www.computer50.org/mark1/new.baby.html) if you're trying to impress someone, used a cathode ray tube monitor (the same technology used in those massive screens from the 90s) to maintain information on a screen that had to constantly be refreshed to keep data for more than a second. The values on the screen were then used as input/output.

[David Sharp has created a Java-based simulator of Baby](http://www.davidsharp.com/baby/), if you'd like to try it out.

John's point is that many languages still used today (C, namely) are still based on languages that had a very specific design for a bespoke machine architecture, and this can be unhelpful for developing for modern computers. OOP should have nothing to do with the underlying technology. Instead, it should be recognised as a technique for deffering logic to make code more maintainable, readable, and easier to write.

## The Function of Bias / [Sara Simon](https://twitter.com/sarambsimon)

Sara studied creative writing before becoming a developer, and brought her interesting perspectives on the similarities between developing and journalism to the table, particulary the unavoidable effect of bias that permeates both industries.

>*“Whether we steal or we borrow, it’s impossible. Even if you’re telling yourself you’re not stealing, subconsciously you are influenced whether you like it or not.” - Mark Ronson, [How Sampling Transformed Music](http://www.ted.com/talks/mark_ronson_how_sampling_transformed_music "How Sampling Transformed Music - Mark Ronson TED Talk")*

Ronson is talking about the music industry, but Sara points out his reasoning applies to more than that. "We live in the post-sampling era. We take the things that we love and we build on them.” There is a clear parallel to development in this. It's no coincedence that the first way I'd attempt to explain [this absurd idea](http://pooperapp.com/ "Pooper App") is "It's Uber... for dog poo." *We take things we love and we build on them.*

Sara argued that we now have a global awareness that our work is shared and has the power to influence further work, and because of this we have a greater responsibility in software development that we've had before. In journalism, this responsibilty can be seen in the form of the [Code of Ethics](http://www.spj.org/ethicscode.asp) from the Society of Professional Journalists:

- Seek truth and report it
- Minimize harm
- Act Independently
- Be accountable and transparent

Sara stipulated that we could draw many more people into software development if as an industry we could come to a similar code of conduct, making collaboration and relationships easier, and improving the environment of customers and developers alike.

In addition to the above, she also explored what elements of typical software environments she was also intereseted in applying to journalism. Pairing on reports is a great way to mitigate bias, or more simply to just catch spelling mistakes early. Crowdsourcing journalism could mean letting more people give input into documents (like Wikipeidia), which could decrease bias and increase reliability, or open the industry up to more collaboration between journalists (e.g. Stack Overflow).

Sara concluded confident that as we reduce the bias we introduce to our products, and recognise our software's influence on the world, we'll be in a position to make even better products.

## Hubs and Spokes and Stockmarkets / [Patrick McKenzie](https://twitter.com/patio11)

>*"I didn't switch from J2EE to Ruby to use an enterprise message bus"*

![StockFighter Screenshot](/assets/images/blog/StockFighter.png)

Patrick took us through the process of creating a Rails app that has to deliver real-time data for a stock market iterface, and that also had to rapidly expand with an increasing user base (not unlike our own Andrew White's [experience with e-petitions](https://unboxed.co/news/meetup-andrew-white-s-technical-breakfast-club-scaling-up-rails-in-a-national-referendum/ Technical Breakfast With Andrew)).

[StockFighter.io](stockfighter.io) is a "weird new kind of recruiting firm" that sets programming challenges and connects skilled programmers with companies looking to hire talented people. You don't have to be looking for a job to try it, so give it a go if you'd just like to learn a few new skills.

## How We Make Software / [Sarah Mei](https://twitter.com/sarahmei)

> *"All the hard problems remaining in software are people problems"*

Sarah Mei is a developer from California, chief consultant at [DevMynd Software](https://www.devmynd.com/). In what was a very intriguing talk and probably the highlight of the day, she claimed that many hard problems we face in software are not technical issues, but social ones. She list four hard problems:

- Hiring
- Turnover
- Growth
- Productivity

She then showed how our current thinking of how many view development teams is flawed, because it fails to address the above issues. The typical assumption of development is that it works like a factory. The more workers you have, the faster it gets done. You build it, ship it, and then if necessary, maintain it. This idea centres around software as a product, which seems sensible, but actually complicates development - it fails to address the four problems. If you double the number of developers on a team, why can't we produce software twice as fast?

The second common team concept is one of a workshop. Similar to a factory, but on a smaller scale - a group of craftsmen handmaking specific items that they personally could be proud of. This does solve the issue of hiring - In a small group that socially interacts throughout the day, one person could affect the performance of others and reduce productivity, which may be why hiring more people isn't always useful. It also helps to explain challenges faced when new developers have to join a project already underway, as it takes time to adjust to the work being done. A factory might have a very simple methodology for an employee to follow, but to produce a bespoke product requires creativity and an understanding of the previous creator's work.

### The Stage Model

Sarah then suggested her own concept. Instead of thinking about software like it's a physical product, we should view it as being more like a performance. Each developer represents an actor, and the performance date is the dealine for the product. With every rehersal, the actors get more stuck into the direction of the performance, making it harder to change later.

I think this is brilliant. It does a significantly better job of presenting the problems outlined at the begining. It does the best job of explaining growth - more actors doesn't mean a better play. The number of actors in a performance plotted against the quality of a play would quickly plateau. It explains why bringing new people into a development cycle can be difficult - actors have already learnt to play off of each other, and each actor influences the direction of the performance subtley. Adding a new actor changes the balance. If they are replacing someone, then they will have to learn their lines after everyone else has, making rehersals challenging (understudies could serve as a decent parallel to pair programming).

Sarah did state in her conclusion that all of these models can exist together, to aid the discussion of projects with clients and developers alike, but the stage model will stick in my mind as a way to reason whether something we do at Unboxed is sensible.

# The Impact

I did not find every talk helpful, but I did come away with plenty of things to think about and discuss, as I'm sure most others did too. It made me more excited to be involved in the Ruby community - even the sponsers were actually pretty great too.

Most importantly, I feel positive about working in Ruby and Rails at Unboxed.
