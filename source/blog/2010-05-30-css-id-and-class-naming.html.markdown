---
layout: "blog"
date: "2010-05-30 00:00:00 UTC"
published: true
title: "CSS id and class naming"
author: "Simon Rentzke"
tags:
  - Rails
---

<p>I&#39;m a developer, I like structure, I like clean code, I like DRY code. I find writing CSS incredibly painful.</p>
<p>CSS1 was first published in December 1996, so I ask, why in 2010 does it feel like CSS is just as painful as it was 14 years ago?</p>
<p><a href="http://www.flickr.com/photos/popandshorty/"><img alt="" src="http://farm3.static.flickr.com/2461/3970138375_3e68095deb_o.jpg" width="500" /></a></p>
<p>A few great CSS tools exist to make the process of defining layout and structures much easier. &nbsp;A few different examples include; <a href="http://baselinecss.com">Baseline</a>, <a href="http://sass-lang.com/">Sass</a>, <a href="http://lesscss.org">Less</a>, <a href="http://960.gs">960</a>, <a href="http://developer.yahoo.com/yui/grids/">Yahoo! grids</a>&nbsp;and <a href="http://blueprintcss.org">Blueprint</a>. Unfortunately nothing quite cuts the mustard. &nbsp;We&#39;ve tried a few of these at Unboxed, but they still fail to some degree on the bigger projects.</p>
<p>Where are the standards? &nbsp;You can&#39;t lay all the blame on IE6 can you? Recently Jason Cale dedicated a fairly lengthy blog post to&nbsp;<a href="http://jasoncale.com/articles/5-dont-format-your-css-onto-one-line">why you should hit return whilst writing your CSS</a>.</p>
<p>A very simple problem I often find is what I should name different elements, and if I should use ids or classes. After often hearing the two <a href="http://twitter.com/ubxd">@ubxd</a> CSS heroes Attila and Will have lengthy debates on the best way of doing things, &nbsp;I think the real answer is that there isn&#39;t one.</p>
<p>So I decided to look around the web, see what other people are doing, see what the top websites of the world were doing. &nbsp;I downloaded the top 1 million websites from <a href="http://www.alexa.com/topsites">Alexa</a>, and wrote a quick app that scrapes these sites, and tracks the top names used for ids and classes.</p>
<p>So here are the results (I stopped at 20000 results):</p>
<div style="margin: 0 auto; width: 380px;">
<table style="float: left; width: 190px;">
<tbody>
<tr>
<td colspan="3" style="text-align: left;">
Top class results</td>
</tr>
<tr>
<th style="text-align: left;">
#</th>
<th style="text-align: left;">
Class</th>
</tr>
<tr>
<td style="text-align: left;">
3090</td>
<td style="text-align: left;">
clear</td>
</tr>
<tr>
<td style="text-align: left;">
1946</td>
<td style="text-align: left;">
logo</td>
</tr>
<tr>
<td style="text-align: left;">
1879</td>
<td style="text-align: left;">
title</td>
</tr>
<tr>
<td style="text-align: left;">
1818</td>
<td style="text-align: left;">
content</td>
</tr>
<tr>
<td style="text-align: left;">
1743</td>
<td style="text-align: left;">
last</td>
</tr>
<tr>
<td style="text-align: left;">
1613</td>
<td style="text-align: left;">
footer</td>
</tr>
<tr>
<td style="text-align: left;">
1582</td>
<td style="text-align: left;">
right</td>
</tr>
<tr>
<td style="text-align: left;">
1582</td>
<td style="text-align: left;">
text</td>
</tr>
<tr>
<td style="text-align: left;">
1562</td>
<td style="text-align: left;">
left</td>
</tr>
<tr>
<td style="text-align: left;">
1471</td>
<td style="text-align: left;">
first</td>
</tr>
<tr>
<td style="text-align: left;">
1467</td>
<td style="text-align: left;">
button</td>
</tr>
<tr>
<td style="text-align: left;">
1331</td>
<td style="text-align: left;">
header</td>
</tr>
<tr>
<td style="text-align: left;">
1187</td>
<td style="text-align: left;">
more</td>
</tr>
<tr>
<td style="text-align: left;">
1179</td>
<td style="text-align: left;">
search</td>
</tr>
<tr>
<td style="text-align: left;">
1131</td>
<td style="text-align: left;">
copyright</td>
</tr>
<tr>
<td style="text-align: left;">
1124</td>
<td style="text-align: left;">
menu</td>
</tr>
<tr>
<td style="text-align: left;">
1098</td>
<td style="text-align: left;">
clearfix</td>
</tr>
<tr>
<td style="text-align: left;">
1000</td>
<td style="text-align: left;">
active</td>
</tr>
<tr>
<td style="text-align: left;">
&nbsp;</td>
<td style="text-align: left;">
&nbsp;</td>
</tr>
</tbody>
</table>
<table style="width: 190px; float: left;">
<tbody>
<tr>
<td colspan="3" style="text-align: left;">
Top id results</td>
</tr>
<tr>
<th style="text-align: left;">
#</th>
<th style="text-align: left;">
ID</th>
</tr>
<tr>
<td style="text-align: left;">
5789</td>
<td style="text-align: left;">
footer</td>
</tr>
<tr>
<td style="text-align: left;">
4622</td>
<td style="text-align: left;">
header</td>
</tr>
<tr>
<td style="text-align: left;">
3170</td>
<td style="text-align: left;">
content</td>
</tr>
<tr>
<td style="text-align: left;">
2555</td>
<td style="text-align: left;">
logo</td>
</tr>
<tr>
<td style="text-align: left;">
2019</td>
<td style="text-align: left;">
container</td>
</tr>
<tr>
<td style="text-align: left;">
1640</td>
<td style="text-align: left;">
main</td>
</tr>
<tr>
<td style="text-align: left;">
1640</td>
<td style="text-align: left;">
search</td>
</tr>
<tr>
<td style="text-align: left;">
1367</td>
<td style="text-align: left;">
wrapper</td>
</tr>
<tr>
<td style="text-align: left;">
1268</td>
<td style="text-align: left;">
nav</td>
</tr>
<tr>
<td style="text-align: left;">
1146</td>
<td style="text-align: left;">
menu</td>
</tr>
<tr>
<td style="text-align: left;">
867</td>
<td style="text-align: left;">
login</td>
</tr>
<tr>
<td style="text-align: left;">
865</td>
<td style="text-align: left;">
top</td>
</tr>
<tr>
<td style="text-align: left;">
858</td>
<td style="text-align: left;">
sidebar</td>
</tr>
<tr>
<td style="text-align: left;">
851</td>
<td style="text-align: left;">
cse-search-box</td>
</tr>
<tr>
<td style="text-align: left;">
842</td>
<td style="text-align: left;">
page</td>
</tr>
<tr>
<td style="text-align: left;">
817</td>
<td style="text-align: left;">
copyright</td>
</tr>
<tr>
<td style="text-align: left;">
700</td>
<td style="text-align: left;">
__VIEWSTATE</td>
</tr>
<tr>
<td style="text-align: left;">
628</td>
<td style="text-align: left;">
navigation</td>
</tr>
<tr>
<td style="text-align: left;">
&nbsp;</td>
<td style="text-align: left;">
&nbsp;</td>
</tr>
</tbody>
</table>
</div>
<div style="clear: left;">&nbsp;</div>
<p><a href="http://www.flickr.com/photos/stephenhackett/"><img alt="" src="http://farm2.static.flickr.com/1296/3424929417_b83f4bd2f8.jpg" width="500" /></a></p>
<p>So, not that interesting I&#39;m afraid. &nbsp;But what is interesting?</p>
<ul>
<li>Some of top ids are elements in HTML5 for example &quot;footer&quot;, &quot;header&quot; and &quot;nav&quot; so we&#39;re making some progression in standards.</li>
<li>The use of <em>id</em> and <em>class</em> seems to be used interchangeably, there really is <em>no</em> common standard.</li>
<li>We see heaps of sites using &quot;footer&quot; and &quot;header&quot; as a class name. Is that ok?</li>
</ul>
<p>So even though the results are not too interesting, I think they serve as a little reference guide, so that in the future I can name things similarly to other people, so that other developers will be able to&nbsp;easily&nbsp;read my code.</p>
<p>&nbsp;</p>
<p>For more results check it out&nbsp;<a href="http://severe-mist-97.heroku.com">here</a>, thanks to the heroes at <a href="http://heroku.com">heroku</a> for their servers that did all the grunt work.</p>

