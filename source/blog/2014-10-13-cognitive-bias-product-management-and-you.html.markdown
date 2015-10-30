---
date: "2014-10-13 10:55:00 UTC"
published: true
title: "Cognitive Bias, Product Management and you"
author: "Carlo Kruger"
tags:
  - Agile
  - Design
---

#Intro
This all started for me sometime back in the late 90s. I was having a conversation with a friend that ran something like this: "I get evolution. I really do, I can see how it has worked by looking at the various species. What I don't get is how evolution explains consciousness. Thinking, feeling, self-reflecting humans. I don't see the same intermediate forms I do with other animal traits."

Anthony introduced me to the work of Richard Dawkins, Daniel Dennett and Steven Pinker. They were the 3 horsemen of my own intellectual apocalypse. In particular the books, ["The Selfish Gene"](https://www.goodreads.com/book/show/61535.The_Selfish_Gene?ac=1), ["Consciousness Explained"](https://www.goodreads.com/book/show/2069.Consciousness_Explained?ac=1) and ["How the mind works"](https://www.goodreads.com/book/show/835623.How_the_Mind_Works?ac=1) made a lasting impact on me. It led to my studying Philosophy part-time for 3 years with a particular interest in Philosophy of Mind and a lifelong interest in cognitive science.

What this experience has done for me is make it inescapably clear that our minds are in fact the product of evolution and all this implies. Our minds have evolved under very different conditions from what we now use them for.

Fast forward 15 or so years and I was working as an Agile Coach helping to implement Scrum and Agile in a variety of organisations, both large and small. What I noticed was that we seemed to be really, really bad at building digital products and the same mistakes seemed endemic regardless of the organisational environment.

And then I noticed that the decisions made seemed to resonate with my reading on cognitive bias. I started investigating further.

#What is cognitive bias?
Let's start by defining what cognitive bias is. The best definition I've found so far is: "innate psychological tendencies that cause us to draw incorrect conclusions". It was the Nobel prize winning work by Tversky & Kahneman in the early 70's in Behavioural Economics that led to the formulation of the first cognitive biases.

Their theory starts by splitting the way we make decisions into "System 1" and "System 2" thinking. System 1 thinking operates quickly and with very little effort. System 2 is responsible for allocating attention to difficult mental activities. This means that in System 2 thinking, the effort is greater and results are slower than with System 1.

An example: when first you learn to drive a car, the process of driving is a difficult mental effort requiring extreme levels of concentration. This is classic System 2 thinking. By comparison, once you've been driving for a few years, you arrive at your destination with no memory of your journey there. All the effortful concentration required to drive has been off-loaded to System 1. Our muscle memory has taken over and we can drive without any conscious awareness of the decisions we make as we drive.

The reason for this is that the brain is a metabolically expensive organ to run. It is estimated that [the brain consumes approximately 20% of the available energy](http://www.scientificamerican.com/article/why-does-the-brain-need-s/) in the body. System 2 tries to optimise this drain of energy by making use of System 1 thinking as much as possible since it is metabolically less expensive to use.

It was Ludwig von Bertalanffy, I think, who said in his book "General Systems Theory": "People are not machines but in every opportunity where they're allowed to behave like machines, they will so behave." In other words, our brains are actively working against us in this regard. We will always tend to use System 1 thinking by default, the domain of the snap judgement, the jump to the conclusion, the unexamined assumption.

If you take a look at the [Wikipedia page on Cognitive Bias](http://en.wikipedia.org/wiki/Cognitive_bias), more than a hundred are listed. I'm going to examine a few which seems to affect product management in particularly gnarly ways.

#[Ikea Effect](http://en.wikipedia.org/wiki/IKEA_effect)
A 1957 study by Aiken identified that rats and starlings had a preference for food which they had expended effort to obtain. This particular cognitive bias is obviously deeply wired into our makeup. Simply put, labour leads to love. We value the things we have worked on more than the equivalent thing that we have not.

This was verified experimentally in a study by behavioural economist, Dan Ariely. Some college students were paid $5 to assemble an Ikea box (from which this cognitive bias gets its name). After they had completed it, they were asked how much they would pay to take the box home with them. This was compared with an already assembled box. Students were willing to pay more for the boxes they had assembled themselves.

To test this with a non-utilitarian item, students were then paid $5 to fold an origami object. Again the students were happy to pay well above the norm for their own origami object, pricing it the same as those folded by origami experts.

The final test was whether completing the process of building was important in the valuation of the object. It was shown that not being allowed to complete the project resulted in lower valuations of the object.

The implication for product management is clear. When we complete a product, an irrational attachment and valuation of that product is created.

#[Sunk Cost Fallacy](http://en.wikipedia.org/wiki/Sunk_costs#Loss_aversion_and_the_sunk_cost_fallacy)
I sometimes refer to this bias as "dysfunctional commitment". Whether it's the war in Vietnam, a poorly performing stock in your portfolio or a bad relationship, they all fall prey to the same bias.

The sunk cost fallacy comes into play when we decide whether to spend additional energy on an existing program or to invest in a new one. Take the example of a poorly performing stock. One of the best strategies for a rational investor is to cash in his losses as early as possible and invest only in winning stocks. But most non-professional investors have trouble letting go of poorly performing stocks until its usually too late.

In the domain of product management, it is tempting to continue investing in a product in the hope that new features will drive conversion. This danger became particularly pronounced when "pivoting" entered the domain. Each decision to invest in a new feature or project on an existing product should be evaluated against all the available alternatives. This would include investing in a completely new product and its chances of success compared to investing in the existing product.

#[Bandwagon Effect](http://en.wikipedia.org/wiki/Bandwagon_effect)
This is really more of a social bias, and a cluster of them, at that. Let's start with group think; in a homogenous group the tendency will be to generate very similar ideas and be more accepting of those ideas. This in turn is a self-reinforcing tendency. Ideas which run counter to the group will not be raised openly. A particular variant of this bias runs rampant in the tech community, the "Not Invented Here" Syndrome. In this the pattern of group think manifests as the automatic naysaying of any technology not built by the team.

This has the effect of devaluing potential competitors for the product, or relying only on in-house tools when developing a product (rather than using available open source tools).

#Scientific Method & UX Practices
So that seems rather gloomy? What can we do about the impact of cognitive bias? Perhaps the best tool we've developed as a species to try to eliminate bias is the scientific method. In particular the work of [Karl Popper](http://en.wikipedia.org/wiki/Karl_Popper#Philosophy_of_science) has drawn a line in the sand as to what we can consider and what we cannot.

Science in the real world relies on the falsifiability of theory. 'The term "falsifiable" does not mean something is made false, but rather that, if it is false, it can be shown by observation or experiment.'

What is particularly exciting for me is that increasingly in Lean Startup and now Lean UX the practice of using hypotheses and creating tests to falsify that hypothesis is gaining ground. For me this means that we are bringing a little science to bear on the art of product management. Let's take a look at how UX practices can help counteract some of these cognitive biases.


#Usability Testing
Usability testing, the practice of getting users to accomplish a goal with your software and collecting their narratives on the process they used, as well as other qualitative metrics is a powerful mechanism for improving your product. If you choose to do this before the product is released into the market, it has the potential to counteract the Ikea effect. Recall, the Ikea effect is contingent to a large degree on the completion of the build.

If we choose to do usability testing before it is out in the market, before the product is "complete", we can gather that feedback and improve before we become irrationally attached to the final product.

#A/B Testing
This UX practice is usually performed by measuring the difference in behaviour between a control group and some variant of the product to help us make decisions about product direction. This helps overcome those social biases like group think and the bandwagon effect.

By gathering quantitative metrics on behaviour we have some proof about direction rather than relying on arguments based on emotion and guess-work. You can't shout at numbers.

#Cheap Prototyping
One of the things that just made me fall in love with UX was its use of cheap prototypes. Paper prototyping is just about the most awesome way to get potential users engaged and discovering things about your product. It dovetails so well with the lean/agile principle of fail early and cheap.

But perhaps its biggest benefit is in helping to avoid the sunk cost fallacy. You can't be unduly influenced by sunk cost, if you haven't spent any significant money or energy on the product idea. I think this is a powerful way to embrace failure and quickly learn and iterate over ideas.

So we're all good? We can journey off into the sunset, "Keep calm and UX on". Not so fast, there are also cognitive biases which  inhibit our ability to profit from these UX practices.

#[Hawthorne Effect](http://en.wikipedia.org/wiki/Hawthorne_effect)
At the dawn of management science, time and motion studies were some of the first attempts to optimise factory conditions. A study carried out at the Hawthorne factory in 1924 to try and find what the optimum light levels for production were, had some rather surprising findings.

The study created a control group and group which were subjected to higher light levels. The group exposed to higher light levels showed measurable improvements in output. What confounded this was that the group exposed to lower light levels showed similar improvements.

The real explanation for this was that the act of observation was itself responsible for the improvements. This has obvious implications for any UX practices which include the user being aware of being observed, such as usability studies. In fact, all qualitative methods are subject to the potential for this bias skewing data.


#[Fundamental Attribution Error](http://en.wikipedia.org/wiki/Fundamental_attribution_error)
This is my favourite bias that I've researched. Our default mode of thinking seems heavily biased towards ascribing agency to action. This makes a lot of sense when you're avoiding predators on the savannah. This knee-jerk reaction kicks in with ease: if someone is driving erratically your immediate assumption is that they're a bad driver or perhaps drunk. A friend of mine's mom was pulled over by a police man for this and it pretty much saved her life. She was in fact in diabetic hypoglycaemia, a dangerous condition where blood sugar levels fall critically low and which can lead to a loss of consciousness.

Our default mode of interpreting behaviour is to assume that the person is responsible, when in fact there may be systemic reasons for their behaviour. [Edwards Deming](http://en.wikipedia.org/wiki/W._Edwards_Deming) in his "System of Profound Knowledge" specifically and directly draws attention to the need for managers to think in terms of the system and not the people in it.

In terms of the impact of this bias on UX, we must be cautious in attributing behaviour to the individual only. We must see their interaction with the product holistically taking into consideration all the elements that might influence them.

#[Confirmation Bias](http://en.wikipedia.org/wiki/Confirmation_bias)
It turns out, people don't like having their opinions contradicted. This is why the scientific method of falsiability is such a powerful tool. It forces one to engage with the need for constructing hypotheses that are falsifiable, as in its absence we would tend to only create positive tests.

The other aspect of this bias is that we tend to interpret data in order to reinforce our existing opinion. So when analysing data we will tend to place greater store on those data points that support our view, and less on those contradicting.

In other words we need to pay particular attention when we judge any kind of metrics as to how the test was constructed and try to treat outcomes neutrally when making decisions based on the data.

I know that UX practitioners are taught to be aware of confirmation bias in for example usability testing. There is however an additional few cognitive biases that should also be of concern.

On the one hand we have the [Experimenters Bias](http://en.wikipedia.org/wiki/Experimenter%27s_bias). A great example of this was the horse [Clever Hans](http://en.wikipedia.org/wiki/Clever_Hans) who seemed able to calculate basic arithmetic. In fact he was responding to subtle body language cues from his observers.

Additionally [Demand Characteristics](http://en.wikipedia.org/wiki/Demand_characteristics) can cause study participants to take on roles such as "The Good Participant Role" (where they try to discern what the hypothesis under test is, so that they can confirm it).

All of this makes it virtually impossible to construct true double-blind experiments in practices such as usability testing and ethnographic research.

#Where the good fruit is...
Building great digital products is hard, perhaps the  most difficult thing we've ever tried to do. It doesn't help that we're using brains that evolved to tell each other where to find the good fruit. It's a poorly adapted tool for building digital products and our basic brain functioning is not co-operating with us in this endeavour. So what can we do about it? Trying to be always aware of cognitive bias is no way to live, and not metabolically possible.

Somethings you can try are:

* Gather facts. It’s hard to know you’re improving if you’re not measuring.
* Create a structure for making decisions. Define clear criteria to evaluate the merits of each option, and use them consistently.
* Be mindful of subtle cues. Who’s included and who’s excluded?
* Foster awareness. Hold yourself—and your colleagues—accountable.


Lastly, know that you have a finite reserve of willpower every day. Each decision you make draws on this reserve. Oatmeal or Rice Krispies? That's where it starts. So my best advice is keep your important decisions to the morning so that you have not expended all your available will power when making these decisions.

