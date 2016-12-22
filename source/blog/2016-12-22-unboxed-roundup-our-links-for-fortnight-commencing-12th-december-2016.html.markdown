---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for fortnight commencing 12th December 2016'
date: '2016-12-22 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

We missed last week because it was our Christmas party, so you get a bumper
double edition this week to get you through until we return in January 2017.

## Monorepos - [Murray S](/people#murray-steele)

http://www.drmaciver.com/2016/10/why-you-should-use-a-single-repository-for-all-your-companys-projects/

In most thinks software developers prefer small things that do one thing well.
This can mean breaking up our applications into services or extracting reusable
libraries, and for each part we keep it in its own code repository.  [David R.
MacIver] suggests keeping everything in one repo because it cuts down on the
complexity of working out which versions of which components work properly
together.  A long time ago (we were still using CVS) I worked on an application
that did this.  I don't remember it being particularly easy to work out the
versioning problem, but I like to think I've learned a bit more about source
code versioning and hygiene since then.  David is pretty convincing, but I'm
still not sure; it's nice to think about alternative approaches.

## Large Scale Scrum (LeSS) @ J.P. Morgan - [Matt T](/people#matt-turrell)

https://www.infoq.com/articles/large-scale-scrum-jomorgan

If you want to transform your organisation to become agile then you need to do
it properly and embrace agile values. Values such as product/feature oriented
teams rather than functional teams, self organisation and the removal of
needless hierarchy.

This is a great post about how a 3000+ section of J.P.Morgan’s technology group
was transformed to use the LeSS framework (LeSS = Large Scale Scrum).

## Perceived Customer Experience Improvement - [Richard S](/people#richard-stobart)

https://medium.com/@daverothschild/use-this-simple-psychology-rule-to-improve-your-customer-experience-41aa4f3f2124#.dlw21ages

If you are looking to improve the perception of your customer's experience,
there are two places to focus. Thinking of the good and bad customer
experiences, this rings true.

## Running Specs from Vim - [Elena T](/people#elena-tanasoiu)

https://robots.thoughtbot.com/running-specs-from-vim-sent-to-tmux-via-tslime

If you want to easily run your specs directly from vim, you can use thoughtbot's
vim-rspec plugin to open a tmux window with the test right below your editor.
This helps because it allows for instant feedback without having to leave your
editor.

The article is a bit outdated so it uses an older syntax for installing plugins
via Vundle. The setup you need to add to your .vimrc will be:

    Plugin 'thoughtbot/vim-rspec'
    Plugin 'christoomey/vim-tmux-runner'
    let g:rspec_command = 'VtrSendCommandToRunner! rspec {spec}'

Don't forget to run `:PluginInstall`

And then to map your command in .vimrc for starting a test:

    let mapleader = "\<Space>"   " Defines a leader key - mine is space
    map <leader>t :w<CR>:call RunCurrentSpecFile<CR>  " Define your rspec command - mine is space-T
    map <leader>s :w<CR>:call RunNearestSpec<CR>
    map <leader>l :w<CR>:call RunLastSpec<CR>
    map <leader>a :w<CR>:call RunCurrentSpecFile<CR>

Now open up your test file and press `<space-T>` to give it a spin!

Alternatively you can use vim-dispatch instead of vim-tmux-runner, if you don't want to use Tmux:

    Plugin 'tpope/vim-dispatch'
    let g:rspec_command = '!clear && bundle exec rspec {spec}'

This will open a new window which you can exit to go back to your test.

## Tips for running code review - [Murray S](/people#murray-steele)

https://hypothes.is/blog/code-review-in-remote-teams/

This article collates research and tips from many other sources about the best
ways to run code review for teams that are mostly remote.  It's still worth
reading if you don't have a remote team, as the things that make things better
for a remote team also make things better for everyone.  The thing that stands
out for me most is the first section "What are code reviews for?" - it's
definitely useful to agree as a team why you are doing code reviews and make
sure everyone understands that purpose.

## Track of the Week - [Carrie B](/people#carrie-bedingfield)

This is the ultimate wintery atmospheric track - I love it because it makes me feel wild and soaring over mountains
and under the stars. It makes me think of being alone in the night sky. Which is kind of weird but very cool.

<iframe width="560" height="315" src="https://www.youtube.com/embed/n6iADG0--8o" frameborder="0" allowfullscreen></iframe>

[Reuben and The Dark - Bow and Arrow](https://www.youtube.com/watch?v=n6iADG0--8o)

