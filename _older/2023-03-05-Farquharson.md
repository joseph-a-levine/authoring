---
layout: post
title:  "Interesting People of Economics: Robin Farquharson"
date:   2023-03-05
categories: post
---

[Alex Teytelboym](https://t8el.com/) was lecturing us last week on social choice theory. In his introductory lecture, he covered famous results which most of us vaguely recalled from undergrad microeconomics.

The Gibbard-Satterthwaite theorem is the second most important result in social choice.{% sidenote "disefi-id" "After Arrow. @ me if you disagree." %} It says that if voters have at least three options to choose from, and they are able to rank their preferences, then any voting system that can be strategically manipulated by voters to improve their chances of getting their preferred outcome will sometimes lead to a situation where no single voter's preferences are fully represented. This result was proven independently by Gibbard and Satterthwaite in 1973 and 1975, respectively. 

In a set of notes on the topic, I learned the theorem was substantially older. David Craven at Birmingham wrote, "The [] theorem was conjectured in 1961{% sidenote "ears-id" "Even this is an underestimate; the conjecture was almost a decade earlier, as I'll discuss below." %} by Michael Dummett and Robin Farquharson." And then, in a footnote: "Farquharson studied at Brasenose,{% sidenote "brasco-id" "My college, at Oxford." %} then Queen’s and Nuffield,{% sidenote "colnuf-id" "The college where I spend most of my time." %} before going insane."{% marginfigure "kacz-figure-id" "assets/img/Kacz_footnote.png" "A competitively-good footnote, from [this paper](https://www.jstor.org/stable/27643011)." %} The rabbit hole began digging itself.

Robin Farquharson was born in 1930 in Pretoria, South Africa, and completed his first Bachelors at Rhodes University. He came to Brasenose to read "Modern Greats"{% sidenote "sidenote-id" "Which would eventually be renamed Philosophy, Politics, and Economics; about half of the British Prime Minister's have studied this degree *at Oxford* since it was introduced about a century ago." %} at the age of 20, and immediately became fascinated by voting systems. Like many growing up during the Second World War, he saw it as an avoidable tragedy. His choice of culprit was the US — in failing to join the League of Nations in 1919, they failed to strengthen the new international order, the failure of which led to war. Looking at the actions of the Senate, Farquharson saw that "the outcome was a result desired by very few of those taking part in it."

Here, I enter into a bit of speculation,{% sidenote "sidenote-id" "Based upon [Henry Cabot Lodge](https://en.wikipedia.org/wiki/Henry_Cabot_Lodge)'s [1925 book](https://www.amazon.co.uk/Senate-League-Nations-Henry-Cabot/dp/1289346356)." %} as I have been unable to track down Farquharson's undergraduate thesis on the topic. In the fall of 1919, there were (broadly, imprecisely) four factions in the US Senate. First, the **Wilsonians**, those supporting the  President and his treaty without reservation; second, the  **pro-Versailles Democrats**, who supported the Treaty of Versailles and the new League less fanatically; third [**Reservationists**](https://en.wikipedia.org/wiki/Lodge_Reservations), following Senator Henry Cabot Lodge, who proposed to join the League with reservations; and fourth, the [**Irreconcilables**](https://en.wikipedia.org/wiki/Irreconcilables), a small bipartisan minority (~15 Senators) who fought against the Treaty at all costs. The first three groups easily made up two-thirds of the Senate, but Lodge and Wilson's factions were bitterly opposed over Lodge's Reservations. A two-thirds vote was required to ratify the Treaty. 

The fall 1919 session produced a fascinating failure in social choice theory; this is what captivated Farquharson. Two votes proceeded. The first was whether to advise and consent to ratify the Treaty *with* Lodge's Reservations: a group of 39 voted in support, made up of the **pro-Versailles Democrats** (who support the Treaty with or without reservations) and the **Reservationists**, and 55 voted to reject the treaty: the **Wilsonians** (opposing the reservations) and the **Irreconcilables** (opposing the Treaty howsoever). The second vote was whether to advise and consent to ratify the Treat *without* amendments: it was voted down by almost the same margin (38-53, with some abstentions), but two factions flipped: now, the **pro-Versailles Democrats** and the **Wilsonians** were in favor, and the **Reservationists** and the **Irreconcilables** voted to reject the treaty.{% sidenote "sidenote-id" "A later vote, the next year, again went against the Treaty *with* reservations, but the margin was much closer — in fact, a less-than-two-thirds majority voted *for* the Treaty. What changed? Many Wilsonians — now figureheaded by a bed-bound president — became pro-Versailles Democrats." %} The result was a failure to ratify. 

Farquharson, in searching for a cause of the Second World War, had come across an apt example of a famous result of social choice theory: he had rediscovered the *[Condorcet paradox](https://en.wikipedia.org/wiki/Condorcet_paradox)*.{% sidenote "othred-id" "Since the Marquis of Condorcet, other rediscoverers included Charles Dodgson/Lewis Carroll and Edward Nanson, a criminally underrated early social choice theorist." %} A common assumption in social choice theory is that individuals have transitive{% sidenote "sidenote-id" "If someone prefers option A to option B, and also prefers option B to option C, then they must prefer option A to option C." %} preferences. The Condorcet paradox is that, even with this neat property, the amalgamation of these individual preferences might be *intransitive*. The paradox is best illustarted when people are forced to choose between three{% sidenote "oremoreid" "Or more." %} options in a series of pairwise votes. 

For example, the preferences of the factions in the 1919 Senate could be ordered as:

<br>

<br> 

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

Or, to simplify:{% sidenote "indff-id" "The symbol **~** means "indifferent between." The indifference between A**~**B is irrelevant, as these options are never compared in a pairwise vote." %}

<br>

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



When looked at this way, the outcome **C**, defeat of the treaty, is unavoidable, despite being the most preferred outcome of only a small (<15%) number of Senators.  As Farquharson saw, whenever the treaty was voted on in a pairwise fashion, other factions would move to block it. His short-lived but foundational interest in voting procedures stemmed from this one example.

It was a productive few years. During his three years at Brasenose, and his subsequent eighteen months at Nuffield, he developed  a strong foundation for the study of voting as a subfield of game theory. This is not, now, how economists study voting — Ken Arrow's conception of a more general social choice theory won out. From 1950 to 1955, Farquharson wrote several papers and two monographs developing a framework for the study of voting. While the terminology is outdated now, the second monograph *The Theory of Voting* is a tight introduction to voting as a strategic game. Better known is his paper with Michael Dummett, "Stability in Voting". 

This is the paper, written in 1955, in which they first conjectured the theorem later known as the Gibbard-Satterthwaite theorem. They write:

> We cannot assume that each voter's actual strategy will be determined uniquely by his preference scale. This would be to assume that every voter votes "sincerely", whereas it seems unlikely that there is any voting procedure in which it can never be advantageous for any voter to vote "strategically", i.e. non-sincerely.

My first reaction in coming across the "Stability" paper is how much clearer Farquharson's vocabulary is than the standard social choice setting.{% sidenote "critar-id" "This is not really a critique of social choice theory. Arrow and Black's foundations enabled a much broader extension by Shapley and Sen and the rest of the giants than the narrow constraints of game theory." %} Reading the Satterthwaite paper,{% sidenote "gibp-id" "Gibbard's earlier paper in *Econometrica* proved beyond me." %} I get a sense of unwieldiness not generated by the Farquharson setting. 

Dummett and Farquharson don't attempt to prove the theorem; decades later, Dummett wrote "I was wrongly convinced it would be extremely hard to prove, and hence never attempted to do so until it had already been proved. [After Gibbard and Satterthwaite had proved the theorem.] I succeeded it doing so without looking up [their proofs], and was rather annoyed to succeed: for presumably I could just as well [] if I had not believed that it would be immensely hard to prove. So could Farquharson, for that matter."

The tragedy of Farquharson is that of his counterfactual work. This paper was his last published contribution.{% sidenote "lat-id" "*Theory of Voting* was finished before the paper, but not published until 1969 due to a disagreement with the publisher: Farquharson insisted the diagrams must be printed in color, and neither budged for a decade. In my copy, the diagrams are in white, black, and red. " %} Although he kept his post at Nuffield until 1958, he never taught and made little progress in his research. 

Beginning in 1955, his mental health worsened; Farquharson had previously diagnosed himself with bipolar disorder, and periods of mania became more common. One such episode cost him a lifetime fellowship at All Souls College; the consequences of others are recorded in the records of Brasenose and Nuffield Colleges. Although he bounced around other colleges and eventually to Cambridge, he lost even that position after running some sort of unintelligible fraud involving the hiring of dozens of typists (presumably, at the expense of the university). 

The last fifteen years of his life, following his departure from Cambridge, are much less documented. His academic friends and colleagues mostly lost touch; Dummett notes only that Farquharson "lived the life of a hippy in London," and that "dropping out appears to have had a vile effect on his behaviour during his manic phases." The reports of his friends in London are also patchy — many were involved in homeless advocacy, anti-racist actions, or mental health activism, and show the associated reluctance to put stories in writing. 

He also spent a substantial amount of time in mental hospitals, active in the [Mental Patients' Union](https://en.wikipedia.org/wiki/Mental_Patients%27_Union) and foundational in the growth of the [Scottish Union of Mental Patients](https://en.wikipedia.org/wiki/Scottish_Union_of_Mental_Patients). His mental illness made the rest of his political activism more difficult; one fellow campaigner for squatters rights wrote:

> [Robin] in full cry was able to wreck havoc in a commune of freaks as well as in a straight organisation and when this happened to us and we could not get through to him or calm him down we also ended calling for men in white coats. It must have been a terrible blow for Robin to be rejected by his own tribe and although he did not bear a permanent grudge, I understand now he would rather anything than fall into the hands of the men in white coats. I heard he put up a good fight when they cornered him and about ten men were needed to subdue him on this occasion, tho' on the grapevine the story may have growed a bit I dunnow.

Other difficult-to-confirm anecdotes include an attempt to steal a military airplane, involvement with some of the earliest British hacking collectives{% sidenote "hack-id" "Decades before hacking was a word." %}, and conning a major film studio into giving him producer credits on two films. He [may have been a White Panther](https://web.archive.org/web/20100206194349/http://members.fortunecity.com/timetortoise/iow-70-r-farquharson.html). He also maintained some sort of a friendship with Rupert Murdoch until his death.{% sidenote "murdfr-id" "This one, oddly, is well-confirmed by multiple sources." %}

[Adam Steiner](https://adamsteiner.uk/), an author interested in grunge history, was working on a book about Farquharson in the 2010s, but nothing came of it. Farquharson 




