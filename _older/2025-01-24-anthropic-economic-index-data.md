---
layout: post
title:  "Automation Progresses"
date:   2025-02-24
categories: post
---


The graph below compares Eloundou et al.'s estimation of AI exposure (x-axis) to Anthropic's data on actual Claude usage (y-axis). Each point represents an occupation, with size indicating the current estimate of employed peopl e
This visualization compares predicted vs. actual AI impact across occupations using two key metrics: Eloundou et al.'s predictions about task exposure to AI (x-axis) and Anthropic's data on actual Claude usage (y-axis). Each point represents an occupation, with size indicating economic impact (median salary × employment forecast) and color showing job family. The plot includes interactive features like a job family filter dropdown and detailed mouseover information for each occupation.

The data preparation involved aggregating task-level assessments to occupation level, calculating the percentage of tasks with non-zero Claude usage for each occupation, and merging this with wage and employment data. The plot was created using R's plotly library, transforming Eloundou's beta scores and Anthropic's usage percentages into comparable metrics of AI impact per occupation.

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

Don't forget to change graph background to #fffff8

