---
layout: post
title:  "Automation Progresses"
date:   2025-02-24
categories: post
---

Last week, I wrote about new data on LLM use from Anthropic, and used their data to expand on papers in the labor automation literature. I've since dug a bit deeper into the 

One key value in Acemoglu's model is the percent of jobs which AI can automate. He gets this from the 2023 paper "GPTs are GPTs" by Eloundou et al. They look at 

The graph below compares Eloundou et al.'s estimation of AI exposure (x-axis) to Anthropic's data on actual Claude usage (y-axis). Each axis measures the "percent of tasks within an occupation exposed to automation," per the two datasets. Each point represents an occupation, with size indicating the current estimate of people employed in that profession and color showing job family (both per the Bureau of Labor Statistics). Use the dropdown to focus on any particular job family.

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

There are a few particularly interesting regions of this graph. I'm first going to focus on the occupations which are seeing particularly high use of Claude's AI. 

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_top_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>



Another revealing region: the occupations which seem highly vulnerable to automation, but have so far show little use. 

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_bot_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>


Finally, there are some jobs which Eloundou et al. expected to be mostly impervious to automation, but Anthropic have found some uses. 

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_left_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>
