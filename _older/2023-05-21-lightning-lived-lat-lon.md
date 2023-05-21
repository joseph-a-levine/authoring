---
layout: post
title:  "Where and when did I hear the most thunder?"
subtitle: "Joseph's favorite earth-borne natural phenomenon"
date:   2023-05-21
categories: post
---

Here's one of my favorite videos on the internet:{% sidenote "lonwa-id" "It's an hour long. I've watched it all, multiple times, but I won't hold it against you if you just watch the 15 second I've queued up. " %}

<br>

<iframe width="560" height="315" src="https://www.youtube.com/embed/2QRjwEYr9E8?start=1016" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<br> 

Lightning is cool. Lances of heat and light bursting from the heavens and lighting stuff on fire and blowing stuff up are cool. This post is not about lightning safety. 

When lightning flashes, it heats the surrounding air to temperatures five times hotter than the surface of the sun, and it does so almost instantly. The video above captures 7,000 frames per second, and the flash, the return stroke, occurs within a single frame. This rapid heating causes the air to expand explosively, creating a shock wave that travels outward from the lightning channel. 

I think thunder is cooler than lightning. This feels slightly heretical — thunder is the 

Oxford is an odd choice of domicile for someone with this passion. Until this past Friday, I hadn't heard thunder since last August in DC. 

Oxford had had seven straight days of sunshine, practically unheard of, which I took full advantage with three trips to the Cotswolds and Chilterns with PP, LT, and EV. On Friday, however, a mysterious two-hour block of rain appeared in my weather app for midafternoon. I walked to the Oxford train station to see LM and GA off to London when the heavens opened: 

{% maincolumn "assets/img/station_rain.gif" "A circle and potato quality bc of Telegram." %}

A cold front had finally, for the first time in my year+ in Oxford, navigated the Irish sea, the Cambrians and Brecon Beacons, and the Thames River Valley Environment Agency to deliver a thunderstorm. This lasted less than 45 minutes, completely soaking the only baseball field in Oxford{% sidenote "alumf-id" "To be used for the Oxford Blues alumni game the following day." %} and raising net flow through Iffley lock by 10% for a fleeting moment. 

You can't hear it in the gif, but I'm cackling with joy. I missed thunder! Thunder cracks and growls and booms and roars and reverberates and, my personal favorite, *rumbles*. I've seen great lightning and heard great thunder in my life{% sidenote "blads-id" "I watched intra-cloud bolts glitter in the night near the Freetown port... no, that can't be right..." %} but never after such a dry spell. This got me wondering — where and when in my life did I have the most exposure to thunder? 

There are two public sources of lightning data — NOAA's recent GOES placements and NASA's OTD/LIS system.{% sidenote "sidenote-id" "IBM's The Weather Company sells most commercially-used lightning data (big industry! companies don't like their equipment experiencing anything measured in kiloamperes), but these are collected through a land-based global total lightning network. Satellites are cooler and US government data are available for free." %} The GOES geostationy datasets are more limited in time scope and richer and my laptop is old and tired and my AWS credits have expired so I decided to use the OTD/LIS data.

Some fun mishaps from Joseph's first time working with lightning data:  

-First, I imported the data to Python with the latitude and the longitude flipped. As there's very little lightning at the poles (high *longitudes*), this resulted in a surprising gap at high *latitudes*, e.g., New Zealand, or the west coast of the US. This one I spotted and fixed right away. 
-However, in fixing it, I somehow flipped latitude North and South (a vertical reflection over the equator). This one I didn't spot right away — I only noted a vague confusion over the plethora of lightning strikes in Sudan{% sidenote "bramai-id" "Reflected up from the African great lakes." %} and the paucity in Northern Australia{% sidenote "taiwaus-id" "Thieved by Taiwan." %} What gave it away was a suspiciously Madagascar-shaped blog in the middle of Saudi Arabia:
{% fullwidth "assets/img/ud_lightning_strikes.png" "" %}
-Having fixed this, Negative lightning strikes? 

For each month-place I lived, I calculated the flash-rate.{% sidenote "units-id" "Lightning flashes per square km per day, apparently this is the standard unit ¯\_(ツ)_/¯" %} for a 0.5°×0.5° box{% sidenote "smoothed" "Smoothed with 2.5° x 2.5° boxcar moving average." %}

Before running the code, I made a list of the best thunder-months I could remember.{% sidenote "pregreg-id" "Always pre-register your hypotheses!" %} 

Freetown in the summer was surely the most memorable. 

I will always have a soft spot for thunderstorms from my parent's porch in Maryland. These memories are particularly strong. My sister Olivia would often try to encourage me and Abigail to abandon the porch and splash barefoot to the park down the street, but I liked the coziness of the porch. My dad would warn against it — probably rightly. The tennis courts at the park are probably the only place on the leafy street kids are at risk of a lightning strike. 

I remember the monsoon in Kolkata damply. Like Freetown, the downpours rarely lasted long, but they were ferocious. 

Now, the data. Here's a map you have to look at because I made it. I removed the continents because they fuzz the facets, but you can clearly see Madagascar in winter, Florida in summer, and the DRC throughout. 

{% fullwidth "assets/img/lightning_strikes.png" "" %}

The results were not what i expected! I've been through my code five times, and everything seems right. I've mapped it, plotted it, looked at the raw data. nothing, nothing would convince me that there was more lightning in August in Kabul than July in Freetown. But Maybe I have to accept it?


## Some notes on William Blake, my favorite artist of lightning



