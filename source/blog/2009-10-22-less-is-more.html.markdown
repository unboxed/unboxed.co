---
date: "2009-10-22 00:00:00 UTC"
published: true
title: "Less is More"
author: "Attila Gyorffy"
tags:
  - Rails
---

<p>At Unboxed we are continuously checking the latest tools which enhance Rails application development.<br />
<br />
Being a front-end specialist I am always keen on different approaches which make front-end development easier and more enjoyable. In recent years, the science of CSS and the need for semantic XHTML has become much more complex but the CSS specifications don&#39;t provide enough for large projects.</p>
<h3>The problem</h3>
<p>CSS is the language for everyone, and therefore does not provide some of the key features of programming languages used in large teams/on complex projects which help quick and bug free development, such as constants and expressions. CSS is great, but after a small time working on large projects, you quickly learn its limitations. CSS files can easily become bloated and hard to maintain unless extreme care is taken.</p>
<h3>The solution</h3>
<p>One of the best things about being a Ruby/Rails developer is that you are part of a community which never rests. Every day someone comes up with better tools to enhance web development. &quot;Extending&quot; CSS through a pre-compiler really is not a new concept. If you&#39;ve worked with CSS and pre-compilers before you&#39;ve probably come across <a href="http://sass-lang.com">SASS</a> (&#39;Syntactically Awesome Stylesheets&#39;) which is meant to serve the purposes mentioned above.</p>
<p>SASS really is a great tool, but its syntax differs so much from the original CSS that it is unfamiliar and results in a high learning curve for new developers.</p>
<p>There is a new kid on the block. <a href="http://lesscss.org">Less</a>, created by <a href="http://twitter.com/cloudhead">Alexis Sellier</a>, is a new attempt at a CSS pre-compiler. Less allows you to do the same as SASS and more importantly its syntax <strong>resembles CSS</strong>, which you are already familiar with, making it exceptionally easy to pick up.</p>
<p>Less is exactly what CSS would be if it was a programming language. It extends CSS with constants, mixins, operations and nested rules adding a big boost to your CSS development. It provides <strong>constants</strong> to define widely used values which you can re-use. Making global changes across your style definitions becomes a matter of changing one line of code. It&#39;s saving us from a lot of headaches!</p>
<pre>
<code class="less"><span>@brand_color</span>: #4D926F;
#header {
  color: <span>@brand_color</span>;
}
h2 {
  color: <span>@brand_color</span>;
}
</code></pre>
<p>You can also apply the same philosophy to whole classes using <strong>mixins</strong> to embed all properties to another ones. That is quite handy if you are applying behavioural definitions to multiple elements.</p>
<pre>
<code class="less">.rounded_corners {
  -moz-border-radius: 8px;
  -webkit-border-radius: 8px;
  border-radius: 8px;
}
#header {
  <span>.rounded_corners</span>;
}
#footer {
  <span>.rounded_corners</span>;
}
</code></pre>
<p>Adding <strong>expressions</strong> into the mixture makes Less even more fun. Expressions come in handy if certain elements in your stylesheet are proportional to others allowing you to deal with complex relationships between properties. You can add, subtract, divide and multiply different values:</p>
<pre>
<code class="less">@the-border: 1px;
@base-color: #111;
#header {
  color: <span>@base-color * 3</span>;
  border-left: @the-border;
  border-right: <span>@the-border * 2</span>;
}
#footer {
  color: <span>(@base-color + #111) * 1.5</span>;
}
</code></pre>
<p>Less is also really great at code maintainability. Rather than constructing long selector names to specify inheritance, in Less you can simply <strong>nest selectors</strong> inside other ones. This makes inheritance clear and style sheets shorter and well-constructed.</p>
<pre>
<code class="less">#header {
  color: red;
  <span>a {
    font-weight: bold;
    text-decoration: none;
  }</span>
}
</code></pre>
<p>Less is under heavy development and there is also a <a href="http://github.com/cloudhead/more">Rails plugin</a> for it which automatically parses your applications .less files through Less and outputs CSS files.</p>
<p>Head over to <a href="http://github.com/cloudhead/less">github</a> and start experimenting with it. At Unboxed we&#39;ve already started making some changes to Less to reduce its dependencies and made it more robust when included in an application. You can check out <a href="http://github.com/unboxed/less">our changes</a> to Less on our github account.</p>
<p>As you can probably see now it is really a great tool and makes CSS development a piece of cake in Ruby/Rails applications. One small caveat, though; Less won&#39;t deal with your IE6 problems. You still have to sort them out yourself.</p>

