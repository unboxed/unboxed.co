---
date: "2010-08-13 00:00:00 UTC"
published: true
title: "Which JS Unit Testing Framework?"
authors:
  - "Petr Zaparka"
tags:
  - Rails
---

<p>As a ruby developer I&#39;m used to using testing frameworks like Rspec or Cucumber. I started polishing an old project of mine recently, which is written in Ruby/js and using Sinatra. When I looked at the code I noticed that there is a lot of JS code without any tests and because I&#39;m big fan of tests, I decided I would write some. But what JS testing framework is best for my needs? I hope that this post will answer that question.</p>
<p>Summarisation of my ideal Framework follows. I am looking for a browser based JS testing framework. The ideal syntax looks like Rspec. It supports nesting of &quot;describe&quot; blocks and installation has to be simple. It should be well documented with a lot of examples.</p>
<h3>Assumption:</h3>
<div>
<ul>
<li>browser based</li>
<li>simple integration</li>
<li>easy configuration</li>
<li>simple syntax</li>
</ul>
</div>
<p>&nbsp;</p>
<link href="http://gist.github.com/stylesheets/gist/embed.css" rel="stylesheet" />
<h2>FireUnit</h2>
<p><a href="http://fireunit.org/" target="_blank" title="Fireunit">http://fireunit.org/</a></p>
<p>FireUnit is a Firefox / Firebug extension written by John Resig and Jan Odvarko. After you install the extension, all you have to do is to write the test and run it in the HTML file.</p>
<p><span>Short example of syntax follow:</span></p>
<p>
</p>
<script src="http://gist.github.com/519104.js?file=gistfile1.js" type="text/javascript"></script>
<p>You can also simulate browser events which is great.</p>
<p>
</p>
<script src="http://gist.github.com/519129.js?file=gistfile1.js" type="text/javascript"></script><p>On the other hand FireUnit doesn&#39;t have proper documentation for the API. So if you would like to know what you can do with FireUnit you have to look at the code directly. Also the last commit at <a href="http://github.com/jeresig/fireunit" target="_blank" title="FireUnit's github page - http://github.com/jeresig/fireunit">FireUnit&#39;s github page</a> is from October 2009 so there is no current developer community.</p>
<h3>Summary:</h3>
<h4>Pros:</h4>
<ul>
<li>easy to configurate / install</li>
<li>easy to integrate</li>
<li>browser event emulation</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>Dependency on Firefox/Firebug</li>
<li>Lack of documentation</li>
<li>No longer actively being developed</li>
</ul>
<p>&nbsp;</p>
<h2>QUnit</h2>
<p><a href="http://docs.jquery.com/QUnit" target="_blank" title="QUnit">http://docs.jquery.com/QUnit</a></p>
<p>QUnit is part of the jQuery project, but it can be used without jQuery. QUnit is maintained by J&ouml;rn Zaefferer and John Resig. After download quint.js and qunit.css from <a href="http://docs.jquery.com/QUnit" target="_blank" title="Qunit source page">http://docs.jquery.com/QUnit</a> is very easy to start using it. Just link the QUnit js and css files at your HTML test and you can start. The documentation is written in jQuery style, so you can see examples too. If you are looking at the syntax, you will notice that the style is very similar to FireUnit (you can guess why).</p>
<script src="http://gist.github.com/519159.js?file=gistfile1.js" type="text/javascript"></script><p>Also it allows grouping tests into logical parts, you can use test blocks and module &quot;scoping&quot;, similar to description at Rspec.</p>
<script src="http://gist.github.com/519177.js?file=gistfile1.js" type="text/javascript"></script>
<h3>Summary Qunit:</h3>
<h4>Pros:</h4>
<ul>
<li>easy to integrate</li>
<li>well documented</li>
<li>used for testing jQuery</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>non-Rspec-like syntax</li>
</ul>
<p>&nbsp;</p>
<h2>QUnit + SpecIt</h2>
<p><a href="http://github.com/joshuaclayton/specit" target="_blank" title="QUnit + SpecIt">http://github.com/joshuaclayton/specit</a></p>
<p>QUnit looks good and the models are fine but what if I would like to use Rspec notation? No problem because there is wrapper called SpecIt written by Joshua Clayton and it looks exactly like Rspec as you can see below. To install SpecIt follow the installation of QUnit. After that, download spec.js from <a href="http://github.com/joshuaclayton/specit" title="Github page for SpecIt">http://github.com/joshuaclayton/specit</a> and include the file into your test.</p>
<script src="http://gist.github.com/519199.js?file=gistfile1.js" type="text/javascript"></script>
<p>It looks almost perfect but it&#39;s still only wrapper and it&#39;s using jQuery. That means that you have to use 4 files to run it. Also some of the matchers are using object type specification for comparing. I just don&#39;t understand why I need that. I just want to compare two values and I don&#39;t want to specify their type.</p>
<h3>Summary QUnit + SpecIt:</h3>
<h4>Pros:</h4>
<ul>
<li>easy to integrate</li>
<li>well documented</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>too many dependencies (jQuery, QUnit)</li>
<li>matchers with object type specification</li>
</ul>
<p>&nbsp;</p>
<h2>JSSpec</h2>
<p><a href="http://jania.pe.kr/aw/moin.cgi/JSSpec" target="_blank" title="JSSpec - JavaScript BehaviorDrivenDevelopment Framework">http://jania.pe.kr/aw/moin.cgi/JSSpec</a></p>
<p>Alan Kang&#39;s JSSpec looks like JS clone of Rspec except that it didn&#39;t allow nesting. To install, download zip file from <a href="http://code.google.com/p/jsspec/downloads/list" target="_blank" title="JSSpec source page">http://code.google.com/p/jsspec/downloads/list</a> and unpack jsspec.js, diff_match_patch.js and css file to proper directory. Then just link the files in your HTML and you can start writing tests.</p>
<script src="http://gist.github.com/519203.js?file=gistfile1.txt" type="text/javascript"></script>
<p>JSSpec has the handy feature of allowing the re-running only a specific test. Another useful part of JSSpec are predefined constants for rendering engine (JSSpec.Browser.Webkit), platform (JSSpec.Browser.Mac) or browser (JSSpec.Browser.IE6).</p>
<h3>Summary JSSpec:</h3>
<h4>Pros:</h4>
<ul>
<li>easy to integrate</li>
<li>re-running specific tests</li>
<li>very Rspec like including matchers</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>Don&#39;t allow nesting of descriptions</li>
</ul>
<p>&nbsp;</p>
<h2>JSpec not a JSSPEC :)</h2>
<p><a href="http://visionmedia.github.com/jspec/" target="_blank" title="JSpec JavaScript Testing Framework">http://visionmedia.github.com/jspec</a></p>
<p><a href="https://rubygems.org/gems/jspec" target="_blank" title="JSpec JavaScript Testing Framework">https://rubygems.org/gems/jspec</a></p>
<p>JSpec written by TJ Holowaychuk is different from previous frameworks. Firstly you can install it as a gem or download as a whole package. These versions are different, while the gem version didn&#39;t contain jspec&#39;s files because he copied them to /Library/Ruby/Gems/1.8/gems/jspec-4.3.2/ (might be different on your system), the package (zip or tar) version contains everything. Because running JSpec could be little bit tricky I describe the basics here.</p>
<p><span>After installing gem, create you directory for project</span></p>
<pre>
  jspec init name_of_project
  Jspec contains one test by default so after command
  jspec run
</pre>
<p>if you don&#39;t have Safari set as a default browser than you can see this error: <span style="color: rgb(221, 17, 68);">NETWORK_ERR: XMLHttpRequest Exception 101</span></p>
<p><span>to fix that just run</span></p>
<pre>
  jspec run --browser Safari
</pre>
<p>The test code is located at spec/spec.js or at unit/spec.js - depends on the version you have installed. JSPEC syntax is very clean and Rspec like.</p>
<script src="http://gist.github.com/519207.js?file=gistfile1.js" type="text/javascript"></script><p>You can nested &quot;describe&quot; blocks, use before block just beautiful.</p>
<p>There are lot of matchers from JSpec and jQuery. JSpec also allows you to stub methods, mock the XHR object, use Fixtures or JSON Fixtures. You also can add your own matchers. JSpec is the most advanced testing framework that I ever seen before. On the JSpec website there are lots of examples and some screencasts so you can learn more if you are interested.</p>
<h3>Summary JSpec:</h3>
<h4>Pros:</h4>
<ul>
<li>basic support for method stubbing</li>
<li>XHR mocking</li>
<li>matchers(jQuery, your own)</li>
<li>very good documentation with examples</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>maybe to complex?</li>
</ul>
<p>&nbsp;</p>
<h2>YUI 3: Test</h2>

<p><a href="http://developer.yahoo.com/yui/3/test/" target="_blank" title="YUI 3: Test - testing framework for browser-based JavaScript solutions">http://developer.yahoo.com/yui/3/test/</a></p>

<p>This testing framework is based on YUI 3 library from Yahoo!. First thing that little bit surprised me was that after you include script definition with YUI API URL, the YUI instance will automatically download the Test&#39;s source files and any missing dependencies for your test. You can download the source by yourself but you have to satisfied possible dependencies. For this reason YUI provide &quot;YUI dependency configurator&quot;. Lets assume that you include the YUI API URL, now there is another surprise. You have to create YUI instance. Then everything that you are doing, is inside that instance. So to write a test you need a Test Case instance and inside this instance you can finally create tests. After you are done you have to add the Test Case into Runner object and then call the run method of the Run object. Then just specified how you would like to view the result you can select from options like: console, XML, JUnitXML, JSON, TAP (Test Anything Protocol - http://testanything.org/wiki/index.php/Main_Page). in the following example, I selected output to the console.</p>
<script src="http://gist.github.com/519209.js?file=gistfile1.txt" type="text/javascript"></script>
<p>As you can see it&#39;s not really nice. In spite of complicated configuration YUI provide lot of handy features like mocking, errors handling, asynchronous tests, DOM event simulation and various types of handlers.</p>
<h3>Summary YUI 3:</h3>
<h4>Pros:</h4>
<ul>
<li>lot of great functions</li>
<li>tear down support</li>
<li>good documentation</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>bad formatting of result</li>
<li>more complicated syntax / setup</li>
</ul>
<p>&nbsp;</p>
<h2>JsUnitTest</h2>
<p><a href="http://jsunittest.com/" target="_blank" title="JsUnitTest - JavaScript Unit Testing framework">http://jsunittest.com/</a></p>
<p>This JS framework by Dr Nic Williams is based on unittest.js from prototypejs but it&#39;s not dependent on that framework, the whole JsUnitTest is one JS and one css file. You can download &quot;getting started package&quot; which includes the library files and example HTML with basic test template.</p>
<script src="http://gist.github.com/519212.js?file=gistfile1.js" type="text/javascript"></script><p>I was unable to find documentation so I looked at the <a href="http://github.com/drnic/jsunittest/tree/master/test" target="_blank" title="Github page">github page</a>) where there are lot of examples. As you can see below JsUnitTest using standard assert syntax for tests.</p>
<script src="http://gist.github.com/519214.js?file=gistfile1.js" type="text/javascript"></script>
<p>JsUnitTest contains all the assert matchers that you would expect and it provide lot of examples how to use them.</p>
<h3>Summary JsUnitTest:</h3>
<h4>Pros:</h4>
<ul>
<li>easy to configure</li>
<li>tear down support</li>
<li>lot of useful examples</li>
<li>TextMate bundle.</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>no documentation - you have to look at the github project page</li>
</ul>
<p>&nbsp;</p>
<h2>Jasmine</h2>
<p><a href="http://pivotal.github.com/jasmine/" target="_blank" title="Jasmine - Simple DOM-less JavaScript testing framework">http://pivotal.github.com/jasmine/</a></p>
<p>Jasmine is written by Pivotal Labs and as authors says they wrote Jasmine because: &quot;We needed something that supported asynchronous specs, didn&#39;t depend on any one framework, and didn&#39;t depend on the request/response cycle of a web application.&quot;</p>
<p>You can install Jasmine as a Gem or download standalone version.</p>
<h3>Standalone version</h3>
<p>After unpacking files, open SpecRunner.html in your browser and you should see this screen:</p>
<p>Example test can be found in spec/SpecPlayer.js using customer matcher that you can create in spec/SpecHelper.js</p>
<p><p>Test template:</p> <script src="http://gist.github.com/520783.js?file=gistfile1.js" type="text/javascript"></script><p>Example of custom matcher:</p> <script src="http://gist.github.com/520784.js?file=gistfile1.js" type="text/javascript"></script></p>
<h3>Gem version</h3>
<p>After installation of Gem:</p>
<pre>
 gem install jasmine
 script/generate jasmine
</pre>
<p><span>You can run test in browser by:</span></p>
<pre>
 rake jasmine
</pre>
<p>This will start the Jasmin server on http://localhost:8888/ where the output is the same as above.</p>
<p>Jasmine looks pretty good, you can write your own matchers, you can use stabbing (createSpyObj method) and mocking (createSpy method), it&#39;s well documented but it could have more examples in documentation.</p>
<h3>Summary Jasmine:</h3>
<h4>Pros:</h4>
<ul>
<li>gem or standalone version</li>
<li>customisable matchers</li>
<li>describe blocks</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>only few examples</li>
</ul>
<p>&nbsp;</p>
<h2>Screw.Unit</h2>
<p><a href="http://github.com/nkallen/screw-unit" title="Behavior-Driven Testing Framework for Javascrip">http://github.com/nkallen/screw-unit</a></p>
<p>Screw.Unit written by Nick Kallen and it&#39;s used by Blue Ridge Rails plugin. Screw.Unit is dependent on jQuery. The test style of Screw.Unit is to use nested describes aka Rspec.</p>
<script src="http://gist.github.com/521013.js?file=gistfile1.js" type="text/javascript"></script><p>You can write your own matchers and specify their error messages.</p>
<script src="http://gist.github.com/521023.js?file=gistfile1.js" type="text/javascript"></script><p>Or you can extend functionality of Screw.Unit:</p>
<script src="http://gist.github.com/521026.js?file=gistfile1.js" type="text/javascript"></script><p>After running the basic test template you will see the classic result table(but in nice pastel colors).</p>
<p>What is little bit sad is, that you have to download whole source code, because there is no prepared package, also I was unable to find documentation. The biggest thing is that last commit is from 2008 so this means the jQuery is out of date.</p>
<h3>Summary Screw.Unit:</h3>
<h4>Pros:</h4>
<ul>
<li>customisable matchers</li>
<li>extendable by subscribing to certain event</li>
</ul>
<h4>Cons:</h4>
<ul>
<li>out of date</li>
<li>missing documentation</li>
</ul>
<p>&nbsp;</p>
<h2>Which one to use?</h2>
<p>It depends very much on what are you looking for. For small simple project I would use QUnit + SpecIt. Because it&#39;s very easy to integrate and it offers everything you would expect from basic tests.</p>
<p>For more robust testing I would suggest JSpec or Jasmine. Jspec and Jasmine contain a more extended test environment with mocking, stubbing, etc.</p>
<p>And that&#39;s all. You may be asking where Env.js is. Env.js is not JavaScript testing framework but a browser simulation environment. There are lot of other testing frameworks but I select only those major ones and of course this blog post ignores the many non browser based testing frameworks which may will be more suitable for Ruby/Rails projects. If you still think that I should mention your favourite one, be my guest and post a comment.</p>
