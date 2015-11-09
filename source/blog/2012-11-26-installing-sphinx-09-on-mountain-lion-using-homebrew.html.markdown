---
date: "2012-11-26 18:25:00 UTC"
published: true
title: "Installing Sphinx 0.9 on Mountain Lion using Homebrew"
author: "Attila Gyorffy"
tags:
  - Rails

---

Here at Unboxed we often need to support older, legacy software. Keeping legacy software in a working condition while development platforms evolve could be sometimes tough.

Most Rails applications in the past have been making use of [Sphinx](http://sphinxsearch.com/)'s indexing service to implement search functionality.

Today I had a quite unpleasant scenario when I had to install Sphinx on a newly installed Mac OS, Mountain Lion.

I turned to my favourite package manager, Homebrew to install Sphinx, unfortunately it was not quite straight forward.

Here I'm sharing my findings to help others saving quite a bit of time (and probably some hair also).

The main key aspects to keep in mind are the following:

* We need to install Sphinx version 0.9.9 to get Thinking Sphinx to recognise the service
* Sphinx 0.9 does not compile with the default Homebrew formula, as it fails to build with the new LLVM compiler. We need to pass in some configurational options to the installer to work around that issue.

First of all, check out the corresponding version of the Sphinx formula. We can do this by running the following:

    $ brew versions sphinx
    $ cd `brew --prefix`
    $ git checkout 82cf700 Library/Formula/sphinx.rb

Now that we've restored an older version of the Sphinx formula, let's make sure to set the necessary environment variable, instructing Homebrew to build the package using the GCC compiler:

    $ export CC="gcc-4.2"
    $ brew install sphinx --use-gcc

This should help you build and compile Sphinx 0.9.9 successfully. You can verify the installed version with the following command:

    $ indexer --version
    Sphinx 0.9.9-release (r2117)
    Copyright (c) 2001-2009, Andrew Aksyonoff

Hopefully this quick tutorial and explanation will help some of you.
