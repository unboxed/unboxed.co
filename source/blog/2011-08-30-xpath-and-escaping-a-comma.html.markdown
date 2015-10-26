---
layout: "blog_article"
date: "2011-08-30 09:00:00 UTC"
published: true
title: "XPath and escaping a comma"
author: "Jolyon Pawlyn"
tags:
  - Rails
---

<p>For those of you looking for the answer to how to escape a comma in an XPath text match, I&#39;m sorry but I just don&#39;t know it. But if you are using Capybara, have no fear, there is a way round.</p>
<p>It was Friday afternoon and I was cleaning up some tests, and had the XPath:</p>
<p><code>//ul[@id=&#39;stories_page&#39;]/li[@class=&#39;story_headline&#39;][1]//p[2][text()=&#39;Posted by Clint Eastwood on Wednesday, 9 September 2009&#39;]</code></p>
<p>The comma appearing after &#39;Wednesday&#39; was causing all manner of havoc. Using the <a href="https://addons.mozilla.org/en-US/firefox/addon/xpath-checker/">XPath Checker</a> Firefox add-on, I tried escaping it with backslashes, ampersands, a forty-four magnum (I was desperate) but no go. It was only when I can across this <a href="https://github.com/jnicklas/capybara/blob/master/lib/capybara/spec/session/has_xpath_spec.rb">capybara spec test for has_xpath</a> that the solution became apparent:</p>
<p><code>have_xpath(&quot;//ul[@id=&#39;stories_page&#39;]/li[@class=&#39;story_headline&#39;][1]//p[2]&quot;, :text =&gt; </code><code>&#39;Posted by Clint Eastwood on Wednesday, 9 September 2009&#39;</code><code>)</code></p>
<p>Although there was the <a href="http://www.unboxedconsulting.com/blog/steak-vs-cucumber-as-bdd-tools">same solution</a> much closer to home. If anybody knows the answer to escaping a comma without Capybara, then please let us know. For once, Google failed me.</p>

