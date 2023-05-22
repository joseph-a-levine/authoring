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

When lightning flashes, it heats the surrounding air to temperatures five times hotter than the surface of the sun, and it does so almost instantly. The video above captures 7,000 frames per second, and the flash, the return stroke, occurs within a single frame. This rapid heating causes the air to expand explosively, creating a shock wave that travels outward from the lightning channel: thunder. 

I think thunder is cooler than lightning. This feels slightly distinctive: thunder can seem the boring stepsibling of lightning. Lightning has pizzazz, it's what gets the party started, and is on to the next place just as quickly. Thunder is constantly late and possibly overstays its welcome. And yet — the joy I get from flashes of light pale next to the deep peals that follow.

Oxford is an odd choice of domicile for someone with this passion. Until this past Friday, I hadn't heard thunder since last August in DC. As we'll uncover below, this wasn't atypical — the Thames River Valley is one of the least lightning struck places in Europe. 

Before last Friday, Oxford had had seven straight days of sunshine, practically unheard of, which I took full advantage with three trips to the Cotswolds and Chilterns with PP, LT, and EV. On Friday, however, a mysterious two-hour block of rain appeared in my weather app for midafternoon. I walked to the Oxford train station to see LM and GA off to London when the heavens opened: 

{% maincolumn "assets/img/station_rain.gif" "A potato quality circle bc of Telegram." %}

A cold front had finally, for the first time in my year+ in Oxford, navigated the Irish sea, the Cambrians and Brecon Beacons, and the Thames River Valley Environment Agency to deliver a thunderstorm. This lasted less than 45 minutes, completely soaking the only baseball field in Oxford{% sidenote "alumf-id" "To be used for the Oxford Blues alumni game the following day." %} and raising net flow through Iffley lock by 10% for a fleeting moment. 

You can't hear it in the gif, but I'm cackling with joy. I missed thunder! Thunder cracks and growls and booms and roars and reverberates and (my personal favorite) *rumbles*. I've seen great lightning and heard great thunder in my life{% sidenote "blads-id" "I watched intra-cloud bolts glitter in the night near the Freetown port... no, that can't be right..." %} but never after such a dry spell. This got me wondering — where and when in my life did I have the most exposure to thunder? 

There are two public sources of lightning data — NOAA's recent GOES placements and NASA's OTD/LIS system.{% sidenote "sidenote-id" "IBM's The Weather Company sells most commercially-used lightning data (big industry! companies don't like their equipment experiencing anything measured in kiloamperes), but these are collected through a land-based global total lightning network. Satellites are cooler and US government data are available for free." %} The GOES geostationy datasets are more limited in time scope and richer and my laptop is old and tired and my AWS credits have expired so I decided to use the OTD/LIS data.

Some fun mishaps from Joseph's first time working with climate data:  

1. First, I imported the data to Python with the latitude and the longitude flipped. As there's very little lightning at the poles (high *longitudes*), this resulted in a surprising gap at high *latitudes*, e.g., New Zealand, or the west coast of the US. This one I spotted and fixed right away. 
2. However, in fixing it, I somehow flipped latitude North and South (a vertical reflection over the equator). This one I didn't spot right away — I only noted a vague confusion over the plethora of lightning strikes in Sudan{% sidenote "bramai-id" "Reflected up from the African great lakes." %} and the paucity in Northern Australia{% sidenote "taiwaus-id" "Thieved by Taiwan." %} What gave it away was a suspiciously Madagascar-shaped blob in the Arabian peninsula:
{% fullwidth "assets/img/ud_lightning_strikes.png" "" %}
3. Having fixed this ("flip(raster_brick, direction='y')"),  I was somehow confronted by spots with negative numbers of lightning strikes. There are places which have never recorded a lightning strike, including most of Antarctica, but as far as I know, nowhere on earth has ever *lost* their lightning. I fancied there could be a reverse Zeus somewhere, dutifully sucking bolts back up into the sky. When he's not busy with his lightning duties, he spends his time turning wine back into water and helping tortoises back onto their backs. But no, this was a problem with my smoothing, and easily fixed. 

For each month-place I lived, I calculated the flash-rate{% sidenote "units-id" "Lightning flashes per square km per day, apparently this is the standard unit ¯\_(ツ)_/¯" %} for each 0.5°×0.5° box{% sidenote "smoothed" "Smoothed with 2.5° x 2.5° boxcar moving average." %}

Before running the code, I made a list of the best thunder-months I could remember:{% sidenote "pregreg-id" "Always pre-register your hypotheses!" %} 

1. Freetown in the summer was surely the most memorable. After the dust of [the harmattan](https://en.wikipedia.org/wiki/Harmattan), the rainy season arrives with a vengeance. I had a balcony overlooking the port, and watched many of these storms roll in from the Atlantic and break against the Lion Mountains, pounding the city for minutes before evaporating in a humid mist.
2. I will always have a soft spot for thunderstorms from my parent's porch in Maryland. These memories are particularly strong. My sister Olivia would often try to encourage me and Abigail to abandon the porch and splash barefoot to the park down the street, but I liked the coziness of the porch. My dad would warn against it — probably rightly. Those tennis courts are probably the only place on the leafy street we were at risk of a lightning strike. 
3. I remember the monsoon in Kolkata damply. Like Freetown, the downpours rarely lasted long, but they were ferocious. My shoes, canvas crocs,{% sidenote "croc-id" "Not unlike [these](https://www.amazon.co.uk/Crocs-Classic-Sandals-Leisure-Sportwear/dp/B08G11G3QW)." %} were rotting off my feet by week three. The rain sticks more heavily in my memory, but there were afternoons and evenings when BP and I did nothing but watch lightning and listen for thunder. 

Now, the data. Here's a map you have to look at because I made it. I removed the continents because they fuzz the facets, but you can clearly see Madagascar in winter, Florida in summer, and the DRC throughout. 

{% fullwidth "assets/img/lightning_strikes.png" "" %}

My memory, it turns out, is quite good. Bethesda in June takes the top spot, with Kolkata and Freetown not far behind. 

<br>

|   |Location         |Month | Flash Rate|     lat|      lon|
|:--|:----------------|:-----|----------:|-------:|--------:|
|1  |Bethesda         |Jun   |  14.024150| 38.9847| -77.0947|
|2  |Kolkata          |Jun   |  10.653850| 22.5726|  88.3639|
|3  |Freetown         |Oct   |  10.325800|  8.4657| -13.2317|
|4  |Freetown         |May   |  10.251130|  8.4657| -13.2317|
|5  |Williamsburg, VA |Aug   |  10.223150| 37.2707| -76.7075|
|6  |Freetown         |Jun   |   9.033635|  8.4657| -13.2317|
|7  |Bethesda         |Jul   |   8.988728| 38.9847| -77.0947|
|8  |Freetown         |Nov   |   8.819298|  8.4657| -13.2317|
|9  |Bethesda         |Aug   |   8.204527| 38.9847| -77.0947|
|10 |Panjshir         |Aug   |   5.926090| 35.3122|  69.5153|
|11 |Kolkata          |Jul   |   5.722551| 22.5726|  88.3639|
|12 |Panjshir         |May   |   5.348469| 35.3122|  69.5153|
|13 |Freetown         |Sep   |   5.318444|  8.4657| -13.2317|
|14 |Kolkata          |Aug   |   4.411599| 22.5726|  88.3639|
|15 |Lucknow          |Aug   |   4.256266| 26.8467|  80.9462|

<br>

And a map, picking August as a particularly exciting month, lightningly. All of the places I've lived are marked with gold stars.

{% fullwidth "assets/img/lightning_lived_aug.png" "" %}

My thunder exposure won't increase any time soon. Unfortunately, Oxford's *best* month (June) experiences two orders of magnitude fewer lightning strikes than any of my Kolkata months. 


## Some notes on artistic portrayals of thunder and lightning

Lightning appears surprisingly rarely in painting. It seems technically quite difficult — because of the ephemerality of the return stroke (much less than a millisecond), we've all seen lightning, but never looked at it, studied it. Capturing such a brief, intense phenomenon is a challenge to any realist painter. 

Impressionists elide the problem well. When I first saw Turner's *Snow Storm: Steam-Boat off a Harbour's Mouth*{% sidenote "sidenote-id" "Turner, aged 67, reportedly asked sailors to lash him to the mast of their boat for four hours during a snow storm for inspiration." %} in London, I read the central pale light haloing the steamboat as a flash of lightning. No notes support this, so it'll be my word against Turner's: 

<br>

{% fullwidth "assets/img/Turner_Snow_storm.jpg" "" %}

The romantics also have an advantage. Visiting a friend's house, much more than a decade ago, I came across a collection of William Blake's illuminated books. The frontispiece to "Europe a Prophecy," entitled *The Ancient of Days*, stuck with me at least until I bought my own collection of Blake books last year. 

<br>

{% fullwidth "assets/img/ancient_of_days.jpg" "" %}

<br>

In my memory, God was throwing a lightning bolt — but he is [Urizen](https://en.wikipedia.org/wiki/Urizen), not God, and the lightning bolt is a compass. Blake's stormclouds and radiant sun remain evocative of lighting.{% marginfigure "margin-figure-id" "assets/img/El_Greco_View_of_Toledo.jpg" "While not a romantic, and not containing any lightning, I will include here my favorite painted sky, El Greco's *View of Toledo*." %} Blake's ecstatic poetry is naturalistic (often referencing "Job": " does he cry with a voice / Of thunder does he look upon the sun & laugh or stretch / His little hands into the depths of the sea). I adore the references to nature (here, I single out thunder) in both his illuminated and unilluminated poems: 

> O for a voice like thunder, and a tongue
> To drown the throat of war!

This isn't to say realists haven't implied lightning. My computer screensaver is Bierstadt's *Among the Sierra Nevada, California*,{% sidenote "asier-id" "Well worth a visit if you're in DC. It's just so **big**." %} which has a relatively boring sky, but Bierstadt's *A Storm in the Rocky Mountains* has a dramatic sky. 

<br>

{% fullwidth "assets/img/Bierstadt_Storm.jpg" "" %}

<br>

No lightning flashes, but the thunderheads are threatening. One warning — Bierstadt had a complicated relationship with geology. One amateur trigonometrician calculated that Bierstadt had inflated the height of Mt. Rosalie by 60%. Similarly, *Sierra Nevada* has several geologically improbable formations.
