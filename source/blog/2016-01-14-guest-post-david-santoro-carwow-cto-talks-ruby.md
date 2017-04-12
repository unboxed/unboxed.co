---
authors:
  - Carrie Bedingfield
tags: 
  - Agile
  - Rails
main_image: "https://s3-eu-west-1.amazonaws.com/unboxed-web-images/ffaf19defd0a696b3415595415783516.jpg"
date: "2016-01-14 13:00 +0000"
published: false
title: "Guest post: David Santoro, carwow CTO, talks Ruby"
---




## carwow’s David Santoro talks Ruby, Extreme Programming and creating a unique space to scale a digital product

![Car wow](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/1814e81fc8717e21775008bee639b0b1.png)

![David Santoro Carwow](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/3e60afb92aeb846bc1aeb00dc86b5ec2.jpg)

This month, we talk to [David Santoro](https://twitter.com/soulnafein), co-founder of one of the brightest new digital products for the car market - [carwow](https://www.carwow.co.uk). What does it take to scale a digital product in a traditional and crowded market? Why is Ruby on Rails the language of choice? And what does ‘hiring great people’ mean in reality?<br/>
<br/>

# Firstly, what is carwow again??
The guys at carwow have created a new (better?!) way to buy your next car. No more sitting awkwardly on the sofa at the dealership on a Saturday afternoon. Let the dealers come to you. Having secured positive PR in the holy trinity of the Guardian, the Independent and The Sunday Times, you could say carwow is now a ‘thing’. 
 
I pick up with David about the tech and culture of technology development that sits behind the proposition.<br/>
<br/>

# So, carwow is built in Ruby, David - why?
Ruby ecosystem is rich in tools that make building web applications easier. I've worked with many technologies in the past (PHP, Java, C#) and I find that when I use Ruby, and specifically Ruby on Rails, I end up spending more time on the product instead of the nitty gritty technical details. Several best practices like caching, assets compiling, etc. are ingrained in the culture/framework.<br/>
<br/>
 
 
# Your digital product is 4 years old now – what does that mean for DevOps? 
The product is now pretty well defined but we still add things very quickly. The code quality is good. I can tell because when new developers join, they are able to deploy new features on day 1, with confidence, because of our testing and monitoring practices. 
 
We now release code several times a day. We love working on very fast and small iterations. We split work into small, valuable functionalities and we deploy often. 
 
This helps in two key ways. It keeps developers more focused on one small thing at a time and it allows us to catch problems earlier and to change direction more easily.<br/>
<br/>
 
![carwow in action](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/ffaf19defd0a696b3415595415783516.jpg)
 
<br/>
# Agile is core to your culture – what does it look like in practice? 
I'm a great fan of Kent Beck's Extreme Programming. I believe many of the practices common to agile teams where first described in his books. 
I believe that often people focus too much on the 'Practices' of agile (Test-driven development or TDD, continuous integration, etc.) and not enough on the principles.  
 
Our team approach to Agile can be summarised with two principles: Simplicity and Feedback.<br/>
<br/> 
 
# Ok, so you’re Agile purists?  
No. I used to be quite dogmatic in my early years. But as your expertise increases, you should feel free to adjust the practices to what fit best your team, the current state of your company/product etc. without losing track of the core principles. 
 
In practice we still practice most things you'd associate with an Agile team: weekly iterations, continuous integration, TDD, etc.<br/>
<br/>

# Tell us about your approach to testing 
Our approach to testing is summarised nicely by Kent Beck a few years ago. 
 
Our decision process revolves around balancing the cost of errors and the cost of delay. Certain parts of carwow have high cost of error, for example sending emails. We know that if we mess up and send too many emails to our users they will get upset. The same happens for price calculation. Wrong prices upset our users. You'll find that these areas are rich of unit tests, integration tests and monitoring.

There are some areas of the codebase, new features currently being AB tested or minor features, that have less test coverage because the cost of error is low or the cost of delay is high. 
 
On top of that we also consider how easy is to spot a problem once in production. If it's easy to spot and revert we might have less automated tests than an area where errors are hard to spot or revert.<br/>
<br/>

# How did you do AB testing in the early days? 
Early on in the product’s development, we relied more on user feedback as we had too few numbers to get real live data we could use. Now we have 1million unique visitors a month. In our business, people buy car via a dealership – it’s hard to A/B test.<br/>
<br/>

# What’s the secret to creating a cut-through digital product in a crowded market? 
Our positioning is actually unique because we are focusing on new car market (rather than used). Other companies in this space are all traditional. There’s not a lot of innovation. So that’s the first secret… create a unique space. 
 
The next is not really a secret but something everyone tries to skip because it’s difficult and expensive. We hired the right people. Every time we hired a specialist in an area, we saw a boom in our sales and users. 
 
It’s hard to hire great people! We don’t have a magic formula. We filter a lot. We hire maybe one developer every 300 applicants.<br/>
<br/>

# And how do you stay unique when people start to catch on to the new market you’ve created? 
When people start to catch up with us – then we’ll see! We work on several areas – both technically and strategically. Our business is a marketplace. We need to enhance supply and demand and that’s not easy to do from scratch. 
 
We are learning so much about the car market, which has created a big barrier to entry for new entrants. This is the hidden part of the iceberg. How do we decide who are the best dealers to quote to a specific person? That’s our secret sauce.<br/>
<br/>

# Where do you stand on upgrading to Rails 5? 
It’s a must. We have a working project to upgrade. We believe that it’s really important to migrate. We update all our gems every 6 months.<br/>
<br/>

# Thanks David. I’ll let you get back to it. 
Thanks!
