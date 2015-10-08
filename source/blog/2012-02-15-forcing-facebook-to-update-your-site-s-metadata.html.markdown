---
layout: "blog"
date: "2012-02-15 14:40:00 UTC"
published: true
title: "Forcing Facebook to Update Your Site's Metadata"
author: "Alan Thomas"

---

<p>Recently we launched a new site for one of our customers:</p>
<p><a href="http://www.thiswaytoamazing.com/">http://www.thiswaytoamazing.com/</a></p>
<p>Up until the launch date we had been re-directing the URL to a different site. The only problem was that the page had a &#39;like&#39; button on it, and when people clicked &#39;like&#39; on the newly launched site, the post came up in Facebook with the correct URL but all the wrong metadata - i.e. the metadata there was from the site we had redirected to. This had happened as Facebook had scraped the site and stored the metadata it had found when the redirect was in place and Facebook only checks back periodically to see if the metadata has changed.</p>
<p>The customer was obviously complaining that their Facebook posts were wrong!</p>
<p>What do we do? Shrug our shoulders and say it&#39;s a Facebook thing? Ignore the customer&#39;s calls until Facebook bothers to scrape the site, crossing our fingers that it won&#39;t be long?</p>
<p>No, here&#39;s the solution: you can use the Facebook Linter to force the page to be scraped again, by cURLing it:</p>
<p><code>curl https://developers.facebook.com/tools/lint/?url={YOUR_URL}&amp;format=json </code></p>
<p>Give Facebook a couple of minutes to do it&#39;s stuff and bingo, happy customer, problem solved.</p>
<p>Could be quite handy if you ever come across this situation or refresh a site in any way that will change the metadata.</p>

