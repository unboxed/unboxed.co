---
date: "2010-11-22 00:00:00 UTC"
published: true
title: "Not so cool as cucumber"
author: "Jolyon Pawlyn"
tags:
  - Rails
---

<p><strong>The problem</strong></p>
<p>There&#39;s just one tiny validation to add to a user model. The impact on the application code is small whereas the impact on the test code is enormous. The change takes a day to implement.</p>
<p><strong>The context</strong></p>
<p>A large code base, Rails 2.3.2, Test::Unit, Cucumber and an unhealthily long test suite execution courtesy of Cucumber.</p>
<p><strong>Possible solutions</strong></p>
<ol>
<li>Decide that tests are so last year and scrap the lot.</li>
<li>Decide that Cucumber is too dangerous to handle and is best left for crudit&eacute;s, salad and Pimms.</li>
<li>Decide that Rails ain&#39;t cut out for building large web sites and start over with PHP or Python.</li>
<li>Decide that you have more <a href="https://github.com/cavalle/steak">carnivorous</a> tastes with regards to testing.</li>
<li>Decide to jettison Cucumber in favour of Webrat, Test::Unit and Shoulda.</li>
<li>Accept that whenever Cucumber is used to comprehensively test a complex and large web site, problems of maintainability are inevitable and decide to address the problem with judicious use of Cucumber.</li>
</ol>
<p>Against the interests of impartiality, I&#39;m only considering solution 6 except to say that solution 5 addresses test execution speed and is quicker for developers to write than Cucumber (thanks to <a href="../../../people/simon-rentzke">Simon</a> for pointing this out). Assuming RSpec or Test::Unit coverage is comprehensive then Cucumber should be used sparingly in such a way that you maximise the bang for your buck. Although <a href="http://37signals.com/svn/posts/2555-podcast-episode-20-programming-roundtable-part-1-of-3">37signals</a> don&#39;t use Cucumber and <a href="http://rubypond.com/blog/you-dont-win-friends-with-salad">others</a> are sceptical, Unboxed has found it invaluable and this difference may be in part due to the type of web sites we build and who we build them for.<br />
<br />
If the time it takes to run a test suite can sensibly be reduced by refactoring or running tests in parallel then this is the best option. If not or it only yields limited time savings then every line of Cucumber should be treated as a valuable and scarce resource. <a href="/people/ben-wong">Ben</a>&#39;s suggestion is to limit the number of feature files or total number of lines so that a new product owner can realistically read through the feature files and gain a good understanding of an apps functionality. When the limit has been reached, any new Cucumber has to be matched by removing less consequential Cucumber scenarios.<br />
&nbsp;<br />
One final point to consider. A lot of Rails development involves working on a new app or enhancing existing sites that are not large scale hence it may seem irrelevant to constrain your use of Cucumber. However if your site increases in size and complexity and technology improvements do not decrease test execution time at the same rate as lines of Cucumber increase, then sooner or later pain will creep up on you. Where&#39;s the pain threshold? Well <a href="http://martinfowler.com/articles/continuousIntegration.html#KeepTheBuildFast">a ten minute build</a> is a good goal to aim for.</p>

