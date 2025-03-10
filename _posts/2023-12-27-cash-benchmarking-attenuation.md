---
layout: post
title:  "Why cash attenuates in the long-term"
date:   2023-12-27
categories: post
---

{% marginnote "bac-note-id" "For background on cash benchmarking, see [this earlier post](https://jablevine.com/articles/23/cash-benchmarking)." %}Consider cash transfers as a numeraire: if a development project is more effective than cash transfers, it is effective; if it is less effective, it is ineffective. 

There are certain types of development projects which are very likely to be effective at all time horizons, especially projects providing public goods (e.g., improving highways) or relying on information asymmetries (e.g., providing bednets). There are also certain types of projects which are very likely to be ineffective at all time horizons.{% sidenote "trunfim-id" "Trivially, say, providing electric incubators and ventilators to clinics without electricity. Shapiro 2017 suggests solar energy and stress reduction coaching, which we explored in the earlier post." %}

Now, consider projects which are ineffective at short time horizons, but become effective in the medium and long term — the effects of cash attenuate faster than the effects of the projects. As formal cash benchmarking experiments become more popular, and cash proves as or more effective in normal, short-term evaluations, should we expect the gap between the effects of cash and the effects of traditional development projects to diminish? 

I think yes, for two reasons. The first is a problem of evaluation, and while difficult to fix for academics, it does not prima facie present an argument for reducing the use of cash transfers. The second reason is structural. 

# Cash has a diversified impact

This argument is: cash use is flexible, so positive effects will be more distributed across outcomes than a targeted development project. Consider a cash benchmarking project run jointly by USAID and GiveDirectly in Rwanda, where a childhood nutrition bundle{% sidenote "bunutr-id" "'superior information, direct transfer of productive assets, and improvements in household diet and sanitation'" %} was benchmarked against a cost-equivalent cash grant. When evaluating a childhood nutrition intervention, it’s natural to measure dietary diversity, or health outcomes like anthropometrics or anemia. Cash may help improve these outcomes, but the positive effects of cash may also improve more general outcomes, such as savings, non-food consumption, and mental health.

This is what the economists evaluating this project found. The bundle delivered benefits on “a set of proximate and directly targeted outcomes of the program components,”{% sidenote "bundlar-id" "The bundle had the largest positive effect on savings, which was the only non-health related target. Part of the bundle included the creation of Savings and Internal Lending Communities, a sort of mutual-aid group." %} while the benefits of cash were broader, on non-targeted outcomes: paydown of debt, increase in consumption, increase in investment.

### Cash allows diversification among different time horizons

Development projects intend to create lasting change.{% sidenote "huma-id" "Humanitarian aid is an exception." %} They get people jobs, they make children healthier, they seek to provide productive assets. These projects have low discount rates relative to the targeted individuals. If given the cost equivalent in cash, recipients may spend some of the cash on longer-term investments similar to development projects, but because of the flexibility of cash, they may also transfer money to family members,{% sidenote "blkact-id" "Separate from paying down debts, just [black tax](https://en.wikipedia.org/wiki/Black_tax)." %} fix a broken window, or have a beer. This implies that, while all of the intended impact of the development project will go to the intended longer term, some fraction of the cash will go to the short term. Therefore, we expect the effects of cash to smooth over time as well as over outcome variables — while the effects of development projects will be concentrated closer to the intended term. This will be true even if a recipient is more efficient in their long-term investments than the development project.

Another USAID and GiveDirectly [study](https://doi.org/10.1016/j.jdeveco.2022.102875) in Rwanda illustrates this. McIntosh and Zeitlin evaluate a workforce training program{% sidenote "stanwor-id" "A ‘standard’ package of training, soft skills, and networking interventions." %} against cost-equivalent cash transfers. They conduct two evaluations: the first paper presents results from 15 months after implementation; the follow-up survey for the [second paper](https://poverty-action.org/sites/default/files/publications/HugukaDukore_Endline_Report_Final%20%283%29.pdf) is conducted 29 months later. What we’re interested in is the "differential impact" of the workforce training program — this shows how the program performed relative to cost-equivalent cash transfers. A positive number means the program had a better impact on that outcome than cash transfers of the same cost, while a negative number means cash transfers would have had a bigger impact.

They find that, in the short term, cost-equivalent cash performs better on fifteen out of seventeen outcomes, the exceptions being: a significant effect on business knowledge, which tested knowledge specifically taught in the training program, and an insignificant effect on debt, which increased for both arms.{% sidenote "botharms-id" "Of the fifteen outcomes cash did better on, only five were significant. Also, after the programs were implemented, the actual costs were calculated. It turned out the workforce training program was cheaper than originally expected, so too much cash was provided to the cash arm. The authors linearly extrapolated the cash effects, which doesn’t seem right to me, but the absolute amounts are small enough that this probably doesn’t matter." %} When we jump to 2.5 years later, we find that all of the differential impacts go away. There are no significant differences between cash and the training program.{% sidenote "busnkn-id" "Business knowledge, which was significant at the 1% level is now significant at the 10% level. But all the other asterisks disappear." %}

The positive effects don’t go away — positive effects of both cash and training persist. It’s the gap between these effects which narrows or disappears.

Examining my hypothesis that cash allows diversification among time horizons, what would we expect to see? Of the outcome variables, some are short-term-y (HH and individual consumption, subjective well-being) and some are particularly long-term-y (savings, investment in productive assets, hours worked). According to my hypothesis, in the short-term study we’d expect to see larger effects on the former for the cash arm, and smaller or null effects on the latter. That is what the authors find. While both cash and training improve assets, only cash has a significant effect on consumption, and cash has a significantly larger effect on subjective well-being. 
There are no significant differences for 

This explains the convergence in outcomes. While the effects of the workforce training program diminish over time, the effects of cash diminish faster.

As a final note, in the [working paper](https://poverty-action.org/sites/default/files/publications/HugukaDukore_Endline_Report_Final%20%283%29.pdf) which provides the 3.5 year results, the authors do not discuss the convergence in outcomes. This paper is much more interested in the falling effects of the workforce training program, especially in the context of COVID shocks.{% sidenote "coshor-id" "The short-term evaluation was conducted in 2019; the long-term evaluation was conducted in 2021." %} This is also an interesting question, and I am definitely relying too much on one study — but this is the only study to look at short- and long-term cash benchmarking. So we take what we can get.

# Cash has more spillovers, and effects with spillovers disperse faster than direct effects

Spillover effects are the indirect effects of an intervention on individuals, households, or areas that are not the direct recipients of the intervention. Take the programs we’ve discussed: workforce training is a very private good, which creates relatively indirect spillovers — such as a recipient creating a new business; spillovers from childhood nutrition projects would take even longer to show up.{% sidenote "silkc-id" "A possible exception is the SILC component, which we don’t have enough information on in the paper. So I regret even bringing it up." %}

Spillovers from cash can be immediate and direct, unlike with traditional development projects. This is straightforward: it’s easier to transfer cash than workforce training, or childhood nutritional planning. Recipients share their cash transfers with friends and family, or pay down informal debts. It is notionally quite difficult for standard impact evaluations to capture these effects beyond measuring the magnitude of the transfers: all cash recipients are in the evaluation, but the people they transfer cash to may not be.

If cash has more spillovers relative to traditional programs, then the measured gap between the effects will fall over time as spillovers increase: more of the benefits of the cash treatment will go to non-treated, and some of these non-treated will be non-evaluated. This does not imply that the benefits to cash recipients will fall — only that while the long-term benefits of traditional programs will accrue primarily to the recipients, the long-term benefits of cash will be spread among the direct recipients and those receiving spillovers. This is sufficient for spillover effects to attenuate cash’s advantage.

# Cash’s flexibility works against it

We only have data from three studies of cost-equivalent cash benchmarking, and only one with long-term results.{% sidenote "ltshvi-id" "Of course, three years is not really long-term. I use short- and long-term as a binary descriptor of the timeframes in this one context. We’re far more interested in the results past a decade, where I think these attenuation effects will be much more noticeable. For important upcoming (non-benchmarking) cash transfer studies on the decade+ timeframe, keep an eye on Dennis Egger,Victor Wang, Johannes Haushofer,etc." %} An attenuation result is not about the projects cash is being benchmarked against, but cash itself. If this is right, then it’s not bad news. Cash attenuation doesn’t mean that all of these projects will be ineffective in the long term. Only that the gap in effectiveness between cash and treatment will shrink overtime.

In the previous post, I discussed the spectrum of cost-effectiveness — projects which are certainly more or less effective than cash, and the goldilocks zone of interestingness. These projects, the ones we’re not sure if they’re more or less effective than cash, and at what timescale, are the ones worth testing against cash. Even if the effects of both cash and the project it’s being compared to attenuate, the effects discussed above mean cash’s effects would fall faster, all else equal.

# How to test this

The relative performance of cash matters a lot, and we should learn more. After this first wave of cost-equivalent cash benchmarking experiments, the general takeaway from the development field is that “basically all of the programmes that USAID has compared to cash have ended up looking like cash outperforms those programmes on most metrics.” And luckily, this motivates more testing — USAID is working with GiveDirectly on thirteen new projects, and has announced that they’ll (separate from GiveDirectly) be benchmarking their next round of East African food security projects.

We should wait before we declare the supremacy of cash — ideally, for research targeted to detect and define an attenuation effect.

## Longer follow-ups

Most obviously, following up on benchmarking projects five years, ten years after implementation will provide insight to attenuation. This is, generally, a difficult and unpopular sell. Academia moves fast — ten years is a long time to wait for a publication — and government budgets move even faster. 

Long-term development studies are hopefully coming into their own. Egger et al. have ten-year results from their unconditional cash transfer program in Kenya. Julian Jamison at the Global Priorities Institute often talks about his plans for long-run RCTs. Victor Wang, also at GPI, used the Athey et al. (2016) surrogate method to forecast long-run effects of cash transfers. Follow-ups specifically on this first round of cost-equivalent cash benchmarking projects will hopefully follow soon.

## Conditional cash transfers

Development projects, like the ones USAID benchmarked against cash, often come with incentives, which are “free”, as in “costless”, to those running the programs. Those incentives (e.g., you must go to a thing, do a thing, talk to certain people) have effects, and those effects have value. But that value won’t be counted in cost-equivalent cash transfers. 

One approach would be to put a value on these behaviors. For closer-to-true equivalency, conditioning cash transfers on the behaviors is simpler. Consider a treatment bundle where childhood nutrition materials are provided in-kind to new mothers after a class at the local medical facility. The marginal cost of another new mother attending that class is very low, and cost-equivalent cash transfers will probably underprovide relative to the value of that class. Randomizing cash against in-kind after class attendance is closer to what we care about. 

## Greater focus on direct spillovers, especially informal transfers

Economists discuss spillovers as the indirect effects of a policy. But cash transfers also have direct spillovers – recipients send the cash to non-recipients, share goods purchased with cash transfers, or reduce their own informal borrowing. Spillover effects from traditional projects will also have spillovers, but these will manifest at longer timescales: improved community resources or increased local employment opportunities. 

Cash has its own GE effects, moving prices and wages for the treated and untreated. Assessing the direct spillovers, the spread of the immediate cash treatment, is more of an evaluation question than modeling the GE effects. 


