---
layout: "blog_article"
date: "2014-09-02 09:44:00 UTC"
published: true
title: "Only fools rush in"
author: "Pedro Moreira"

---

We recently had an interesting discussion in the internal Unboxed interwebs room regarding an example of inheritance.

[Pawel](http://www.unboxedconsulting.com/people/pawel-janiak) put forth an example about how to guard against someone forgetting to call `super` in an inheritance chain.

I jumped in to the discussion with the mantra of "Composition over Inheritance". Admittedly, I didn't even give the example a good read: I saw a simple inheritance structure and gave an instinctive response.

### Instincts and reflection

On my commute home, this lingered in the back of my mind. Recently, I have been writing/researching an article on how to continuously improve as a developer and my reaction went against the grain of my thinking on that.

A much better approach would have been to consider all the angles and reflect on the code presented. Sounds pretty evident, right? One of those "Monsieur de la Palice was alive fifteen minutes prior to his death" deals.

### Let us hear the facts

So, let's shift our perspective a bit and place ourselves as someone new to the team working on this codebase.

A decision was made to use inheritance and our task for the moment is to guard against neglecting to call `super` in the initializer for one of subclasses.

What should be our first port of call? Let's look at the test suite. Does the system have one? Is there a scenario to handle this situation? If not, our way forward is simple: we write one.

Now that we have established a secure footing, we can consider whether we are in a position to refactor the inheritance structure. What trade offs would that imply and what benefits would it bring?

### Jumping the gun, are we?

My response of "Composition over Inheritance" is a solution to a problem that hadn't yet presented itself.

It betrays a *trigger happy* attitude by rushing to refactoring. As we are well aware of, refactoring does not happen without tests and without careful consideration of the system as a whole.

Being a good developer is as much about writing good, clean code that is easy to change as it is about the perspective and **attitude** with which we approach a problem.

