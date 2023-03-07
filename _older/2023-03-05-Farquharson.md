---
layout: post
title:  "Interesting People of Economics: Robin Farquharson"
date:   2023-03-05
categories: post
---

[Alex Teytelboym](https://t8el.com/), who tells his PhD students to call him Sasha, was lecturing us last week on social choice theory. In his introductory lecture, he covered famous results which most of us vaguely recalled from undergrad microeconomics.

The Gibbard-Satterthwaite theorem is the second most important result in social choice; it was proven independently by Gibbard and Satterthwaite in 1973 and 1975, respectively. The theorem says that if voters have at least three options to choose from, and they are able to rank their preferences, then any voting system that can be strategically manipulated by voters to improve their chances of getting their preferred outcome will sometimes lead to a situation where no single voter's preferences are fully represented. 

In a set of notes on the topic, I learned the theorem was substantially older. David Craven at Birmingham wrote, "The [] theorem was conjectured in 1961 by Michael Dummett and Robin Farquharson." And then, in a footnote: "Farquharson studied at Brasenose,{% sidenote "brasco-id" "My college, at Oxford." %} then Queen’s and Nuffield,{% sidenote "colnuf-id" "The college where I spend most of my time." %} before going insane."{% marginfigure "kacz-figure-id" "assets/img/Kacz_footnote.png" "A competitively-good footnote, from [this paper](https://www.jstor.org/stable/27643011)." %} The rabbit hole began.

Robin Farquharson was born in 1930 in Pretoria, South Africa, and completed his first Bachelors at Rhodes University. He came to Brasenose to read "Modern Greats"{% sidenote "sidenote-id" "Which would eventually be renamed Philosophy, Politics, and Economics; about half of the British Prime Minister's have studied this degree *at Oxford* since it was introduced about a century ago." %} at the age of 20, and immediately became fascinated by voting systems. Like many growing up during the Second World War, he saw it as an avoidable tragedy. His choice of culprit was the US — in failing to join the League of Nations, they failed to strengthen the new international order, the failure of which led to war. Looking at the actions of the Senate, Farquharson saw that "the outcome was a result desired by very few of those taking part in it."

Here, I enter into a bit of speculation,{% sidenote "sidenote-id" "Based upon [Henry Cabot Lodge](https://en.wikipedia.org/wiki/Henry_Cabot_Lodge)'s [1925 book](https://www.amazon.co.uk/Senate-League-Nations-Henry-Cabot/dp/1289346356)." %} as I have been unable to track down Farquharson's undergraduate thesis on the topic. In the fall of 1919, there were (broadly, imprecisely) four factions in the US Senate. First, the **Wilsonians**, those supporting the  President and his treaty without reservation; second, the  **pro-Versailles Democrats**, who supported the Treaty of Versailles and the new League less fanatically; third [**Reservationists**](https://en.wikipedia.org/wiki/Lodge_Reservations), following Senator Henry Cabot Lodge, who proposed to join the League with reservations; and fourth, the [**Irreconcilables**](https://en.wikipedia.org/wiki/Irreconcilables), a small bipartisan minority (~15 Senators) who fought against the Treaty at all costs. The first three groups easily made up two-thirds of the Senate, but Lodge and Wilson's factions were bitterly opposed over Lodge's Reservations. A two-thirds vote was required to ratify the Treaty. 

The fall 1919 session produced a fascinating failure in social choice theory; this is what captivated Farquharson. Two votes proceeded. The first was whether to advise and consent to ratify the Treaty *with* Lodge's Reservations: a group of 39 voted in support, made up of the **pro-Versailles Democrats** (who support the Treaty with or without reservations) and the **Reservationists**, and 55 voted in opposition: the **Wilsonians** (opposing the reservations) and the **Irreconcilables** (opposing the Treaty howsoever). The second vote was whether to advise and consent to ratify the Treat *without* amendments: it was voted down by almost the same margin (38-53, with some abstentions), but two factions flipped: now, the **pro-Versailles Democrats** and the **Wilsonians** were in favor, and were opposed by the **Reservationists** and the **Irreconcilables**.{% sidenote "sidenote-id" "A later vote, the next year, again went against the Treaty *with* reservations, but with a now-depleted group of Wilsonians — now figureheaded by a bed-bound president — many-but-not-enough became pro-Versailles Democrats." %} The result was a failure to ratify. 

Farquharson had rediscovered the *[Condorcet paradox](https://en.wikipedia.org/wiki/Condorcet_paradox)*. A common assumption in social choice theory is that individuals have transitive{% sidenote "sidenote-id" "If someone prefers option A to option B, and also prefers option B to option C, then they must prefer option A to option C." %} preferences. Even with this neat property, however, the amalgamation of these individual preferences might be *intransitive*. The paradox is best illustarted when people are forced to choose between three{% sidenote "oremoreid" "Or more." %} options in a series of pairwise votes. 

For example, the preferences of the factions in the 1919 Senate could be ordered as:

<br>

<br> 

<table>
  <tr>
    <th>Wilsonians</th>
    <th>Pro-Versailles Dems</th>
    <th>Reservationists</th>
    <th>Irreconcilables</th>
  </tr>
  <tr>
    <td class="wilsonians">Treaty passes as-is</td>
    <td class="pro-versailles-dems">Treaty passes as-is<b>~</b>Treaty passes with reservations</td>
    <td class="reservationists">Treaty passes with reservations</td>
    <td class="irreconcilables">Treaty doesn't pass</td>
  </tr>
  <tr>
    <td class="wilsonians">Treaty doesn't pass</td>
    <td class="pro-versailles-dems">Treaty passes as-is<b>~</b>Treaty passes with reservations</td>
    <td class="reservationists">Treaty doesn't pass</td>
    <td class="irreconcilables">Treaty passes as-is<b>~</b>Treaty passes with reservations</td>
  </tr>
  <tr>
    <td class="wilsonians">Treaty passes with reservations</td>
    <td class="pro-versailles-dems">Treaty doesn't pass</td>
    <td class="reservationists">Treaty passes as-is</td>
    <td class="irreconcilables">Treaty passes as-is<b>~</b>Treaty passes with reservations</td>
  </tr>
</table>

Or, to simplify: 

<table>
  <tr>
    <th>Wilsonians</th>
    <th>Pro-Versailles Dems</th>
    <th>Reservationists</th>
    <th>Irreconcilables</th>
  </tr>
  <tr>
    <td class="wilsonians">A</td>
    <td class="pro-versailles-dems">A <b>~</b> B</td>
    <td class="reservationists">B</td>
    <td class="irreconcilables">C</td>
  </tr>
  <tr>
    <td class="wilsonians">C</td>
    <td class="pro-versailles-dems">A <b>~</b> B</td>
    <td class="reservationists">C</td>
    <td class="irreconcilables">A <b>~</b> B</td>
  </tr>
  <tr>
    <td class="wilsonians">B</td>
    <td class="pro-versailles-dems">C</td>
    <td class="reservationists">A</td>
    <td class="irreconcilables">A <b>~</b> B</td>
  </tr>
</table>

(This is not the simplest possible example; the *pro-Versailles Dems* are unnecessary.)

[Adam Steiner](https://adamsteiner.uk/), an author interested in grunge history, was working on a book about Farquharson in the 2010s, but nothing came of it. 




