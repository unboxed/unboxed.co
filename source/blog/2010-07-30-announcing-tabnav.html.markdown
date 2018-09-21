---
date: "2010-07-30 13:00:00 UTC"
published: true
title: "Announcing: Tabnav"
authors:
  - "Alex Tomlins"
tags:
  - Rails
---

<p>I&#39;ve just released a new gem called <a href="http://rubygems.org/gems/tabnav">Tabnav</a>. It&#39;s a Rails helper for generating navbars. It allows you to specify highlighting rules for each nav item in a clean way without lots of conditionals in your views.</p>
<p>It is loosely based on the widget from <a href="http://github.com/paolodona/rails-widgets">rails-widgets</a>, and uses a similar DSL. You may ask why I bothered writing this if something similar already exists. Well, simply, there are some things about the rails-widgets implementation that I really don&#39;t like. Specifically, it hijacks <tt>javascript_include_tag</tt> to insert it&#39;s own javascript. This sort of thing should be explicit. Also the markup it generates could be cleaner - it has some unnecessary extra tags in it, and repeated class names. I created this to clean up these problems, and add new features. I&#39;ve added support for custom partials for tab contents, and I plan to add support for nested menus in the next version.</p>
<p>So how does it work? Well, that&#39;s easiest to show with some examples...</p>
<h3>A Basic Navbar</h3>
<p>In the view:</p>
<script src="https://gist.github.com/498861.js?file=gistfile1.erb"></script><noscript>
<pre><code>&lt;%
  render_tabnav do |n|
    n.add_tab do |t|
      t.named &quot;Home&quot;
      t.links_to root_path
      t.highlights_on :controller =&gt; :home, :action =&gt; :index
    end
    n.add_tab do |t|
      t.named &quot;Froobles&quot;
      t.links_to froobles_path
      t.highlights_on :controller =&gt; :froobles
    end
  end
%&gt;</code></pre>
</noscript><p>When rendering the home page</p>
<script src="https://gist.github.com/498861.js?file=gistfile2.html"></script><noscript>
<pre><code>&lt;ul&gt;
  &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;/&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href=&quot;/froobles&quot;&gt;Froobles&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</code></pre>
</noscript><p>It allows lots of control over the generated markup:</p>
<p>In the view:</p>
<script src="https://gist.github.com/498861.js?file=gistfile3.erb"></script><noscript>
<pre><code>&lt;%
  render_tabnav :id =&gt; &quot;main_navigation&quot;, :class =&gt; &quot;clearfix&quot; do |n|
    n.add_tab :class =&gt; &quot;home_tab&quot; do |t|
      t.named &quot;Home&quot;
      t.links_to root_path
      t.highlights_on :controller =&gt; :home, :action =&gt; :index
    end
    n.add_tab :class =&gt; &quot;heading&quot; do |t|
      t.named &quot;Froobles Heading&quot;
      t.highlights_on :controller =&gt; :froobles
    end
    n.add_tab do |t|
      t.named &quot;Froobles&quot;
      t.links_to froobles_path, :target =&gt; &quot;_blank&quot;, :rel =&gt; &quot;http://foo.bar/&quot;
      t.highlights_on :controller =&gt; :froobles, :action =&gt; :index
    end
  end
%&gt;
</code></pre>
</noscript><p>On froobles/index outputs:</p>
<script src="https://gist.github.com/498861.js?file=gistfile4.html"></script><noscript>
<pre><code>&lt;ul id=&quot;main_navigation&quot; class=&quot;clearfix&quot;&gt;
  &lt;li class=&quot;home_tab&quot;&gt;&lt;a href=&quot;/&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li class=&quot;heading active&quot;&gt;&lt;span&gt;Froobles Heading&lt;/span&gt;&lt;/li&gt;
  &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;/froobles&quot; target=&quot;_blank&quot; rel=&quot;http://foo.bar/&quot;&gt;Froobles&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</code></pre>
</noscript><p>and if that&#39;s not enough for you, you can even specify your own partial to be used to render the tab contents.</p>
<p>Check out the <a href="http://github.com/unboxed/tabnav">github project page</a> for full documentation etc. For feature requests or bug reports use the <a href="http://github.com/unboxed/tabnav/issues">github issue tracker</a>.</p>
<p>Enjoy.</p>

