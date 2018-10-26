---
date: "2015-09-21 08:00:00 UTC"
published: true
title: "Visualising UK Government Petitions"
authors:
  - "Cale Tilford"
tags:
  - Innovation

---

The new [Petitions](https://petition.parliament.uk) site has been a massive success since its [launch this July](/news/new-government-petitions-website-launched-developed-in-partnership-with-unboxed-consulting), with tens of thousands signing petitions each day. It was suggested to me that it would interesting to visualise this data with a heatmap - giving an insight into the popularity of individual petitions across the UK. My aim is that these visualisations are not only interesting but can be of use when focusing campaigns on certain issues around the country.

Allow me to introduce [Petition Map](http://petitionmap.unboxedconsulting.com/):

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/5052a541-8578-4bea-92a9-fece50666330.png" alt="Petitions 1"></p>

Petition Map allows users to select from the most popular petitions, signature-wise (with the option to input the URL of any smaller petitions) and regions of the UK to generate new heatmap visualisations:

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/1bcc970d-dc86-428b-b6a3-a44723a029fb.png" alt="Petitions 2"></p>


Users can search through each constituency (or hover over parts of the map) to find out the number of signatures on each petition in each individual area:

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/d6d74a13-3e7c-4e41-b35f-eebff4476ebd.png" alt="Petitions 3"></p>

Petition Map has been built to work on both desktop and mobile so that petitions can be visualised even when on the move:

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/339dabcc-5ce6-4f34-ab71-40898db75d7c.png" alt="Petitions 4"></p>


<h2>How to use Petition Maps</h2>
Petition Map defaults to the most signed petition, but other popular petitions can easily be found using the searchable dropdown menu. It’s also possible to change the area that the map displays which is useful for more regional petitions (Northern Ireland is currently not supported at this time) i.e. Scotland:

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/a5ac4bc0-8f9c-45d3-9790-50802c39e003.png" alt="Petitions 5"></p>

Any constituency can be highlighted by using the searchable constituency dropdown or by hovering over a constituency on the map. The colour of the highlighted area
corresponds the party of that constituencies’ MP, along with their name:

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/deff4d82-71a8-46c8-b2ef-fd3656902aa8.png" alt="Petitions 6"></p>

The map itself supports zoom using the control panel on the right but if you’re using a mobile device or a supported trackpad - pinch to zoom can be used too:

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/832e10c1-593c-4d08-adf3-e26e20bb16f3.png" alt="Petitions 7"></p>

If you find a map you want to share you can use the Share Map button to generate a link or share directly to Twitter or Facebook.

If you want to take a screenshot or you’re using a device with a low resolution, parts of the user interface (UI) can be hidden in the settings panel, for a clearer overall map view:

<p align="center"><img src="https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/0aea3164-db50-487f-a0b1-2999775f8bff.png" alt="Petitions 8"></p>


<h2>Technology</h2>
A recent addition to the Petitions site now allows developers to request data in JSON format (by appending .json to any petition url). As well as the total number of signatures, each petition holds an array of signatures by country and constituency with the latter being the data used by Petition Map.

The [ONS code](https://en.wikipedia.org/wiki/ONS_coding_system) of each is used to match the Petition data with the constituency boundaries. I used boundary data in TopoJSON format, an extension of GeoJSON, which was was sourced from [here](https://github.com/martinjc/UK-GeoJson).

To generate heatmaps I used the popular javascript library D3 which allows you to easily create interactive maps for the web (see [here](http://bost.ocks.org/mike/map/) for more). Every time a petition is loaded, a set of signature ranges is calculated relative to the number of signatures for that specific petition - these are then used to colour the map.
