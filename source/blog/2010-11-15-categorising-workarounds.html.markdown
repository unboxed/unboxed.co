---
date: "2010-11-15 00:00:00 UTC"
published: true
title: "Categorising Workarounds"
author: "Austin Fagan"
tags:
  - Rails
---

<p>You&#39;ve just done a new release. The Sales team find when they take a new customer&#39;s details and hit &#39;save&#39; they don&#39;t end up on the place new order page, so they can&#39;t make a sale! Which means they can&#39;t get commission. Which means they are going to stomp down your door, like now!</p>
<p>Heads are going to roll if the issue isn&#39;t resolved but after six hours there&#39;s a workaround discovered. Everyone breaths a sigh of relief, if there&#39;s a workaround it doesn&#39;t have to be fixed anytime soon, right? Maybe, maybe not! Depends on the kind of workaround.</p>
<p>Its worthwhile to categorise the workarounds that need to be played in your business. This helps when it comes to prioritising issues. Here&#39;s a few classifications I&#39;ve used when categorising workarounds.</p>
<p>&nbsp;</p>
<p><strong>Normal Manual</strong><br />
The workaround involves little effort. Examples of this could be a datafix or a message replay that requires little investigation. These are ideal candidates for automation. The number of orders, customers affected and length of time taken should be recorded.</p>
<p><strong>Crazy Manual</strong><br />
The workaround is time-consuming and painful. From the the support team&#39;s perspective issues with a crazy manual workaround need to be fixed as soon as dev resource can be allocated. If the team are using a task board they should be setting limits on the number of these in play. Details should be recorded as per a normal manual workaround.<br />
<br />
<strong>Automated</strong><br />
Both the identification of affected orders and the corrective action are scripted and require no manual intervention from the support team.&nbsp; The more of these in play the flakier the system.</p>
<p><strong>External Action</strong><br />
The onus to take corrective action lies outside the team.</p>
<p><strong>No known workaround</strong><br />
If these are customer-affecting they need to be fixed as soon as possible.&nbsp;</p>
<p><strong>No workaround needed</strong><br />
There&#39;s an issue but we don&#39;t need to take corrective action.</p>
<p>If the support team use a task-board as their bug-board (aka The Wall of Lame) the different types of workaround in play should be represented with a different colour of sticker and put on the bug card. This will make it easier to impose limits on the number of workarounds the support team are dealing with. If the task board is full of crazy manual stickers the team is about to implode under the strain. If the board is full of automated stickers the devs know the system isn&#39;t as robust as it should be.&nbsp;</p>

