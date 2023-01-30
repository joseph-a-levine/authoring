---
layout: post
title:  "Hospital pricing, ambulances, and qualitative research"
date:   2023-01-18 11:37:17
categories: post
---

My cohort-mate Elodie Chervin, a tall Frenchwoman with a better American accent than mine, presented in December a [paper](https://jablevine.com/papers/Cooper%20et%20al_2022_Do%20Higher-Priced%20Hospitals%20Deliver%20Higher-Quality%20Care.pdf) she had worked on as a research assistant for Zach Cooper at Yale.{% sidenote "notemexl" "The notebook with my notes from Elodie's talk mysteriously disappeared in Mexico (not mysterious, it was stolen from a rental car after the back window was smashed in). And I'm not going to actually read the paper; grad students don't have time for that. So this is mostly based on memory." %} The paper is called "Do Higher-Priced Hospitals Deliver Higher-Quality Care?," and finds positive results, with a caveat for market concentration. 

While higher-priced hospital services are better in areas with competitive markets, once the authors look at consolidated markets, the effect goes away.{% sidenote "deffgorev" "Or reverses? Don't remember." %} There's been a trend towards hospital mergers, larger "health systems," and this is the bad guy. The path goes something like: mergers —> ↑ market consolidation —> ↓ competition —> ↑ prices, with no endogenous change in the level of care. So having higher prices makes you a better hospital (lol causality) in competitive markets, but there's no reason for this to be true in consolidated markets. 

There's a graph which shows up often around people with an intellectual interest in inflation, like first-year microeconomics students or New York Times readers:

<br>

{% maincolumn "assets/img/price-changes-in-usa-in-past-20-years-2294.jpg" "Elodie used a different version which separated emergent hospital services from non-emergent hospital services. <br> Also — I just bought a television in the UK! Wow are those things cheap." %}


The moral is presumably that, while it's great televisions are getting cheaper, the "important" stuff is getting more expensive faster than wages, and the only goods which are getting cheaper are boring, opiate of the masses consumer goods.{% sidenote "moore-id" "Another plausible story is about the Moore's law as a black hole for innovation. We've gotten unspeakably good at cramming transistors onto a chip, but this innovation hasn't (yet) spilled over to revolutions in the healthcare sector. I like this story more, but it's not as relevant." %} 

An aside — one of my soapboxes is the increasing fraction of for-profit nursing homes. Something like three-quarters of skilled nursing facilities (SNFs{% sidenote "snfsac-id" "There are many jokes about 'sniffs' among EMTs, with numerous possibilities of what the 'S' could stand for." %}) are for-profit, compared to one-third of hospitals. One example which has made my life sadder and smellier is HCR Manorcare, a chain of SNFs which Carlyle acquired in a messy LBO 20 years ago. I don't have any evidence that PE-run SNFs are worse than privately owned facilities... oh wait, [yes I do](https://jablevine.com/papers/Gupta%20et%20al_Does%20Private%20Equity%20Investment%20in%20Healthcare%20Benefit%20Patients.pdf): 

> PE ownership increases short-term mortality by 13% and reduces other measures of patient well-being, while also increasing revenue per patient by 10%. Clinical and operational changes help to explain these effects, including declines in nursing staff and lower compliance with care standards.

This is a great paper — there's a cool instrumental variables approach to deal with changing patient composition. And it brims with righteous anger: the authors aren't afraid to write that their results imply "20,150 lives lost due to PE ownership over our twelve-year sample period." Now, I'm slightly equivocating between PE-run and privately owned SNFs. 

Back to Elodie's work: identifying the effect of a hospital's care is really tough econometric work, so they used the preferences of ambulance companies towards certain hospitals. These preferences are unrelated to patient characteristics, so which hospital any individual patient is sent to is plausibly exogenous.{% sidenote "plauex-id" "My favorite phrase in applied econometrics." %} This is a *fantastic* identification strategy.{% sidenote "sidenote-id" "It's not original to this paper — Doyle et al. (2015) first used this IV strategy, and it's becoming more widespread." %} Ambulance services, especially private ambulance companies, are messy and chaotic in just the right amount to give the authors a paper.

By the end of the talk, I had a dozen questions written down for Elodie about ambulance data and the assumptions the research team made — how to deal with consolidation of ambulance companies? When ambulance crews bid for calls,{% sidenote "bidcallexx-id" "While often the nearest ambulance is dispatched, these systems aren't perfect, and other ambulances can assign themselves if they think they're closer or can provide better care. This also leads to some companies or crews 'assigning' themselves more serious patients." %} are those patients treated as less randomly assigned?  Do they control for the quality of the snacks in the emergency room?{% sidenote "snachosp-id" "Mutatis mutandis, an arbitrary ambulance crew would prefer to bring a patient to Shady Grove Adventist Hospital than Suburban Hospital, because SGAH has Nutri-Grain bars." %}  Did the team have data on patient hospital preference?

I didn't get to ask all of these questions, but the last one is my largest concern with the Cooper et al. identification strategy. 

{% sidenote "sidenote-id" "Another member of my cohort, Daniel Barbosa, has been presenting a paper on police body cameras in Brazil with a remarkably similar identification strategy. If one of the other six of us can put together a paper on firefighters, we'll have the trifecta." %} 

Interesting lives and ride alongs

The UK is having it's own ambulance based crisis at the moment

