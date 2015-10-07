---
layout: "blog"
date: "2009-11-23 00:00:00 UTC"
published: true
title: "The curious incident of the named scope and the non-existent array"
author: "Jolyon Pawlyn"
tags:
  - Rails
---

<p>Rails performance tuning is often a matter of SQL tuning but we recently stumbled upon code involving a named scope that caused more SQL to run than expected.</p>
<p>We were looking at an SQL trace in <a href="http://www.newrelic.com/">New Relic RPM</a> for one of our apps when Nige and myself noticed what appeared to be duplicate SQL. The query was a monster (a monster in this case being a beast of over 20ft in height and over 2 seconds in length) so having it run twice was pretty ruinous even with fragment caching in use. To identify the cause, we used the <a href="http://code.google.com/p/query-reviewer/">query reviewer </a> plugin which is fantastic and enables you to see the SQL being run for an individual page request in the browser window. As well as identifying inefficient SQL, it also shows at what point in the code SQL is fired.</p>
<p>The apparent duplicate SQL was running from a partial where there was a <code>products</code> variable set to a named scope. The partial contained:</p>
<div class="code_example"><code>product = products.first<br />
...<br />
products[1..2].each_with_index do |product, index|<br />
&nbsp;&nbsp;...<br />
end </code></div>
<p>At first glance it looks innocuous as <code>products.first</code> is meant as an alternative to <code>products[0]</code>. If <code>products</code> was an array the two statements would be equivalent but in this example, <a href="http://api.rubyonrails.org/classes/ActiveRecord/NamedScope/Scope.html"><code>first</code></a> is a named scope. It is chained together with the the named scope defined by <code>products</code> and has the affect of adding <code>LIMIT 1</code> to the executed SQL since <code>products</code> is yet to be populated. When <code>products[1..2]</code> runs, the same SQL is executed without the <code>LIMIT 1</code>.</p>
<p>To ensure that the SQL runs once, we used <code>products[0]</code> instead of <code>products.first</code>. By calling <code>products[0]</code>, the named scope is populated and subsequent calls including a call to <code>first</code> does not result in any SQL.</p>

