---
layout: "blog"
date: "2015-09-21 08:00:00 UTC"
published: true
title: "Visualising UK Government Petitions"
author: "Cale Tilford"

---

The new [Petitions](https://petition.parliament.uk) site has been a massive success since its [launch this July](https://www.unboxedconsulting.com/news/new-government-petitions-website-launched-developed-in-partnership-with-unboxed-consulting), with tens of thousands signing petitions each day. It was suggested to me that it would interesting to visualise this data with a heatmap - giving an insight into the popularity of individual petitions across the UK. My aim is that these visualisations are not only interesting but can be of use when focusing campaigns on certain issues around the country.<br/>

Allow me to introduce [Petition Map](http://petitionmap.unboxedconsulting.com/):<br/>

<p align="center"><img src="http://bit.ly/1KjPHeE" alt="Petitions 1"></p>
<br/>
Petition Map allows users to select from the most popular petitions, signature-wise (with the option to input the URL of any smaller petitions) and regions of the UK to generate new heatmap visualisations:<br/>

<p align="center"><img src="http://bit.ly/1ijKD2D" alt="Petitions 2"></p>
<br/>

Users can search through each constituency (or hover over parts of the map) to find out the number of signatures on each petition in each individual area:<br/>

<p align="center"><img src="http://bit.ly/1NG8O8T" alt="Petitions 3"></p>

Petition Map has been built to work on both desktop and mobile so that petitions can be visualised even when on the move:<br/>

<p align="center"><img src="http://bit.ly/1NG8VkQ" alt="Petitions 4"></p>
<br/>

<h2 "View public profile"">How to use Petition Maps</h2>
Petition Map defaults to the most signed petition, but other popular petitions can easily be found using the searchable dropdown menu. It’s also possible to change the area that the map displays which is useful for more regional petitions (Northern Ireland is currently not supported at this time) i.e. Scotland:<br/>

<p align="center"><img src="http://bit.ly/1OhzCwf" alt="Petitions 5"></p>

Any constituency can be highlighted by using the searchable constituency dropdown or by hovering over a constituency on the map. The colour of the highlighted area
corresponds the party of that constituencies’ MP, along with their name:<br/>

<p align="center"><img src="http://bit.ly/1izOlWD" alt="Petitions 6"></p>

The map itself supports zoom using the control panel on the right but if you’re using a mobile device or a supported trackpad - pinch to zoom can be used too:<gr/>

<p align="center"><img src="http://bit.ly/1iScQOA" alt="Petitions 7"></p>

If you find a map you want to share you can use the Share Map button to generate a link or share directly to Twitter or Facebook.<br/>

If you want to take a screenshot or you’re using a device with a low resolution, parts of the user interface (UI) can be hidden in the settings panel, for a clearer overall map view:<br/>

<p align="center"><img src="http://bit.ly/1FPRdU9" alt="Petitions 8"></p>


<h2 "View public profile"">Technology</h2>
A recent addition to the Petitions site now allows developers to request data in JSON format (by appending .json to any petition url). As well as the total number of signatures, each petition holds an array of signatures by country and constituency with the latter being the data used by Petition Map.<br/>

The [ONS code](https://en.wikipedia.org/wiki/ONS_coding_system) of each is used to match the Petition data with the constituency boundaries. I used boundary data in TopoJSON format, an extension of GeoJSON, which was was sourced from [here](https://github.com/martinjc/UK-GeoJson).<br/>

To generate heatmaps I used the popular javascript library D3 which allows you to easily create interactive maps for the web (see [here](http://bost.ocks.org/mike/map/) for more). Every time a petition is loaded, a set of signature ranges is calculated relative to the number of signatures for that specific petition - these are then used to colour the map.
