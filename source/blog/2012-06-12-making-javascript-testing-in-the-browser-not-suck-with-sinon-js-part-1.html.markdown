---
date: "2012-06-12 14:33:00 UTC"
published: true
title: "Making JavaScript testing in the browser not suck with Sinon.js (Part 1)"
authors:
  - "Carl Whittaker"
tags:
  - Testing
---

<p>Writing tests for JavaScript is tough and often overlooked. I&#39;m going to show you how to make it easier to write them with an awesome library called <a href="http://sinonjs.org/">Sinon.js</a>.</p>
<h2>Getting started</h2>
<p>There are several mature testing frameworks out there. I have my preference, but it&#39;s up to you to decide which framework meets your needs.</p>
<p>For your consideration:</p>
<ul>
<li><a href="http://qunitjs.com/">QUnit</a></li>
<li><a href="http://visionmedia.github.com/mocha/">Mocha</a></li>
<li><a href="http://pivotal.github.com/jasmine/">Jasmine</a></li>
</ul>
<h3>Setting up</h3>
<p>First we&#39;ll need to create a page to run our tests. We&#39;ll include the libraries we plan to use to write our tests.</p>
<p>In my examples I&#39;m going to use QUnit simply because it&#39;s the framework I&#39;m most familiar with and the tests are easy to read. Check out <a href="http://docs.jquery.com/QUnit#Using_QUnit">using QUnit</a> for detailed setup instructions. You&#39;ll also need Sinon, so head over to <a href="http://sinonjs.org">sinonjs.org</a> and download it along with the QUnit adapter.</p>
<p>Here&#39;s my test runner; I&#39;ve included jQuery too because it makes it much easier to test the DOM.</p>
<pre>
<code>&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot; /&gt;
    &lt;title&gt;Test Suite&lt;/title&gt;
    &lt;link rel=&quot;stylesheet&quot; href=&quot;qunit.css&quot; /&gt;
    &lt;script src=&quot;jquery.min.js&quot;&gt;&lt;/script&gt;
    &lt;script src=&quot;qunit.js&quot;&gt;&lt;/script&gt;
    &lt;script src=&quot;sinon-1.3.4.js&quot;&gt;&lt;/script&gt;
    &lt;script src=&quot;sinon-qunit.js&quot;&gt;&lt;/script&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;div id=&quot;qunit&quot;&gt;&lt;/div&gt;
    &lt;div id=&quot;qunit-fixture&quot;&gt;&lt;/div&gt;
  &lt;/body&gt;
&lt;/html&gt;

</code></pre>
<p>If we run that in a browser we should see this:</p>
<p><img alt="No tests" src="https://s3-eu-west-1.amazonaws.com/unboxed-web-images/27f758722bbcde1544450997e2d55b48.png" style="width: 380px; height: 212px; " /></p>
<h3>Writing a simple test</h3>
<p>Lets start with something very basic. We&#39;re going to write something that will let us build up a list of values and render them to a page. We could start with a test like this:</p>
<pre>
<code>module(&#39;listView&#39;);

test(&#39;The user is presented with a list of added items&#39;, function () {
  document.getElementById(&#39;qunit-fixture&#39;).innerHTML = &#39;&lt;div id=&quot;list&quot;&gt;&lt;/div&gt;&#39;;
  var domList = document.getElementById(&#39;list&#39;),
      list = listView(domList);

  list.addOne(&#39;javascript&#39;);
  list.render();

  equal(domList.innerHTML, &#39;javascript&#39;, &#39;A single value should be rendered&#39;);

  list.addOne(&#39;ftw&#39;);
  list.render();

  equal(domList.innerHTML, &#39;javascript ftw&#39;, &#39;A list of values should be rendered&#39;);
});

</code></pre>
<p>Here we&#39;re creating a fixture element and instantiating our new module. We&#39;re then exercising a function called addOne with a string and asserting that each time we call render the expected string is inserted into our element. Lets run our test and see it fail:</p>
<p><img alt="Failing test" src="https://s3-eu-west-1.amazonaws.com/unboxed-web-images/826e207509d77633c4d808d1b7bddeae.png" style="width: 380px; height: 316px; " /></p>
<p>Now lets write some code to get this test to pass:</p>
<pre>
<code>var listView = function (domEl) {
  var items = [];
  return {
    addOne: function (value) {
      items.push(value);
    },
    render: function () {
      domEl.innerHTML = items.join(&#39; &#39;);
    }
  };
};

</code></pre>
<p><img alt="Passing test" src="https://s3-eu-west-1.amazonaws.com/unboxed-web-images/b87687958a51a3561bee2aaa5fb00073.png" style="width: 380px; height: 283px; " /></p>
<p>There we go, our first test passes. Now onto more complicated matters.</p>
<h3>Getting asynchronous</h3>
<p>Now lets alter our listView module to load some data from the server. This presents us with two problems:</p>
<ol>
<li>We don&#39;t want to request data from a real server. This would be slow and means we can&#39;t test our code in isolation.</li>
<li>The request could return at any time and our test doesn&#39;t know when to expect it.</li>
</ol>
<h3>Sinon.js to the rescue</h3>
<p>Sinon is a collection of utterly essential testing tools that among other things enable you to deal with tricky asynchronous code and server requests.</p>
<p>Lets write a new test:</p>
<pre>
<code>var xhr,
    requests,
    domList;

module(&#39;listView&#39;, {
  setup: function () {
    xhr = sinon.useFakeXMLHttpRequest()
    requests = [];
    xhr.onCreate = function (r) {
      requests.push(r);
    };
    document.getElementById(&#39;qunit-fixture&#39;).innerHTML = &#39;&lt;div id=&quot;list&quot;&gt;&lt;/div&gt;&#39;;
    domList = document.getElementById(&#39;list&#39;);
  },
  teardown: function () {
    xhr.restore();
  }
});

test(&#39;The list is populated from the server&#39;, function () {
  var list = listView(domList);
  list.fetch();

  equal(requests.length, 1, &#39;One XHR request should be made&#39;);

  requests[0].respond(200, {&#39;Content-Type&#39;: &#39;application/json&#39;}, &#39;[&quot;XHR&quot;, &quot;INNIT&quot;]&#39;);

  equal(requests[0].url, &#39;/path/to/list.json&#39;, &#39;A request to the correct URL should be made&#39;);

  list.render();

  equal(domList.innerHTML, &#39;XHR INNIT&#39;, &#39;The retrieved values should be rendered&#39;);
});

</code></pre>
<p>We&#39;ve now defined a setup function for our test suite which replaces the native XMLHttpRequest with a fake one. This will intercept any attempt to communicate over XHR and allow us to define our own responses. Even better it will make our request synchronous since we&#39;re responding to our fake request immediately from inside our test; pretty cool.</p>
<p>Lets update listView and get that test to pass:</p>
<pre>
<code>var listView = function (domEl) {
  var items = [];
  return {
    addOne: function (value) {
      items.push(value);
    },
    render: function () {
      domEl.innerHTML = items.join(&#39; &#39;);
    },
    fetch: function () {
      $.getJSON(&#39;/path/to/list.json&#39;, function (response) {
        items = response;
      });
    }
  };
};

</code></pre>
<p>Run the tests</p>
<p><img alt="Two passing tests" src="https://s3-eu-west-1.amazonaws.com/unboxed-web-images/3147eae88222387afcee4a500eda3a38.png" style="width: 380px; height: 364px; " /></p>
<p>Perfect.</p>
<h3>Burning through time</h3>
<p>When testing JavaScript animation or other asynchronous functionality based on timeouts and intervals you don&#39;t want to have to wait for them to finish in your tests.</p>
<p>Sinon.js solves this for you with fake timers. Sinon will replace the browsers&#39; timing functions with it&#39;s own. This enables you to advance the clock manually and test what your code does in response.</p>
<p>Lets write a test to animate a simple cube:</p>
<pre>
<code>test(&#39;cube is animated for 1 second&#39;, function () {
  document.getElementById(&#39;qunit-fixture&#39;).innerHTML = &#39;&lt;div id=&quot;cube&quot;&gt;&lt;/div&gt;&#39;;

  var domCube = document.getElementById(&#39;cube&#39;),
      cube = animatedCube(domCube),
      clock = sinon.useFakeTimers();

  cube.animate();

  clock.tick(100);

  equal(domCube.style.left, &#39;10px&#39;, &#39;Cube has moved 10px left after 100ms&#39;);

  clock.tick(100);

  equal(domCube.style.left, &#39;20px&#39;, &#39;Cube has moved 20px left after 200ms&#39;);

  clock.tick(800);

  equal(domCube.style.left, &#39;100px&#39;, &#39;Cube has moved 100px left after 1000ms&#39;);

  clock.tick(100);

  equal(domCube.style.left, &#39;100px&#39;, &#39;Cube has stopped moving&#39;);

  clock.restore();
});

</code></pre>
<p>In this test we&#39;re telling Sinon to replace the browsers timers and then incrementally advancing the timer to interesting points in our animation and asserting that the cube is where we expect it to be.</p>
<p>And now lets make the test pass:</p>
<pre>
<code>var animatedCube = function (domEl) {
  var x = 0,
      start,
      diff,
      interval,
      loop = function () {
        diff = Date.now() - start;
        x = Math.round((100 / 1000) * diff);
        domEl.style.left = x + &#39;px&#39;;
        if (x &gt;= 100) clearInterval(interval);
      };

  domEl.style = &#39;width:10px;height:10px;background-color:red;position:relative&#39;;

  return {
    animate: function () {
      start = Date.now();
      interval = setInterval(loop, 10);
    }
  };
};

</code></pre>
<p>And now to run the tests.</p>
<p><img alt="Three passing tests" src="https://s3-eu-west-1.amazonaws.com/unboxed-web-images/934137b3a2b3a02d42dad2e40b0573cb.png" style="width: 380px; height: 408px; " /></p>
<p>Hopefully this has served as a useful introduction to effective JavaScript testing in the browser.</p>
<p>In the second part of this article I&#39;ll write about Sinon spies, mocks and stubs.</p>

