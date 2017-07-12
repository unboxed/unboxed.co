---
date: "2010-07-27 04:00:00 UTC"
published: true
title: "Wikileaks war logs on rails"
authors:
  - "Tom ten Thij"
tags:
  - Rails
---

<p>I assume that everybody has now heard about the <a href="http://wikileaks.org">wikileaks</a> <a href="http://www.guardian.co.uk/warlogs">war</a> <a href="http://www.nytimes.com/interactive/world/war-logs.html">logs</a> <a href="http://wardiary.wikileaks.org">leak</a>. I thought this was a nice opportunity to hack together a Rails app that contains the data that was leaked. Hopefully this will be a good resource for people to play around both with the data and with Rails.</p>
<p>The app itself is not very exciting at the moment, all it does is read the original 76911 military cables into the database and show them on a page with pagination.</p>
<p>The amount of data is rather overwhelming, but there must be a lot of human stories buried in there - both tragic and heroic. I hope that with the help of others and with more spare time I will be able to dig out some of that humanity.</p>
<p>&nbsp;For now: just some raw stats on the total number of people killed and wounded in action:</p>
<table border="1" cellpadding="1" cellspacing="1" width="300">
<tbody>
<tr>
<th>
&nbsp;</th>
<td>
WIA</td>
<td>
KIA</td>
</tr>
<tr>
<td>
Civilian</td>
<td>
9044</td>
<td>
3994</td>
</tr>
<tr>
<td>
Host Nation</td>
<td>
8503</td>
<td>
3796</td>
</tr>
<tr>
<td>
Friendly</td>
<td>
7296</td>
<td>
1146</td>
</tr>
<tr>
<td>
Enemy</td>
<td>
1824</td>
<td>
15219</td>
</tr>
</tbody>
</table>
<p>The source can be found on github:&nbsp;<a href="http://github.com/tomtt/wikileaks_wardiary_on_rails">http://github.com/tomtt/wikileaks_wardiary_on_rails</a></p>
<p>An online demo can be found here:&nbsp;<a href="http://www.war-logs-on-rails.com">http://www.war-logs-on-rails.com</a></p>
<p>Many thanks to wikileaks for their hard work and Julian Assange in particular, for truly sticking his head out for this.</p>

