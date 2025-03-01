---
layout: post
title:  "Automation Progresses"
date:   2025-02-24
categories: post
---

Last week, [I wrote about](https://jablevine.com/articles/25/anthropic-economic-index) new data on LLM use from Anthropic, and used their data to expand on papers in the labor automation literature. I'm going to draw on a couple of threads I found in the data. In particular, the Anthropic data allow me to identify the sectors where automation is happening faster and slower than expected. 

The real and potential capabilities of LLMs only became visible in the past few years. In that time, researchers began discussing the "exposure" of different forms of human labor to LLMs. Now that we have data on how these tools are initially being used, we can see if exposure has translated into actual use, or if actual use has come to surprisingly exposed jobs.

Acemoglu's "Simple Macroeconomics of AI" paper uses an exposure measure from "[GPTs are GPTs](https://arxiv.org/pdf/2303.10130)", a paper out of OpenAI.{% sidenote "fdsjkl-id" "The first GPT meaing Generative Pre-trained Transformers, and the second meaning General Purpose Technologies." } Both this measure and the Anthropic data are at the level of O*NET tasks, a comprehensive list of all tasks performed by human laborers from the Bureau of Labor Statistics. The OpenAI measure from Eloundou et al. provides an expectation of how automatable each task is; the Anthropic data show which tasks are currently being performed by their AIs. Most papers in this literature do not clearly differentiate between automation (AI replacing the human's labor) and augmentation (AI speeding the human's labor). I will be as sloppy as Eloundou et al. and Acemoglu in my own usage.

Eloundou et al. feed the 19,265 O*NET tasks to human and LLM graders, who rate the task's **exposure**: "whether access to an LLM or LLM-powered system would reduce the time required for a human to [...] complete a task by at least 50 percent."{% sidenote "barcmis-id" "The missing bit in brackets mentions Detailed Work Activities or DWAs, which are parallel to tasks." %} The raw ratings are converted into $$\beta$$ scores, which weights easily automatable tasks as more automatable than 

The graph below compares Eloundou et al.'s estimation of AI exposure (x-axis) to Anthropic's data on actual Claude usage (y-axis). Each axis measures the "percent of tasks within an occupation exposed to automation," per the two datasets. Each point represents an occupation, with size indicating the current estimate of people employed in that profession and color showing job family (both per the Bureau of Labor Statistics). Use the dropdown to focus on any particular job family.

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

I'm going to zoom in on a few particularly interesting regions of this graph. First, there are the occupations which are seeing particularly high use of Claude's AI. 

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_top_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

These jobs are fairly-to-wholly automatable, and the Anthropic data backs this up. Alone out of all XXXX occupations, only mathematicians are fully automatable. Of the 11 tasks which make a mathematician, Eloundou et al.'s methodology finds that all 11 are exposed to current LLM technology.{% sidenote "gamma-id" "other fully autmatble by gaama" %} 

I think about these jobs as easy to automate, but also easy to diffuse into 

Another revealing region: the occupations which seem highly vulnerable to automation, but have so far show little use. 

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_bot_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>


Finally, there are some jobs which Eloundou et al. expected to be mostly impervious to automation, but Anthropic have found some uses. 

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_left_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>


Eloundou et al. report another measure of automation ($$\gamma$$ in their data), which is what tasks they expect could ultimately be performed by some future, more advanced AI system. [details].

Gamma graph here

## Where Acemoglu and Eloundou et al. disagree

This section is going to get into the details of the methods, but it's worth it - you'll get an interesting payoff. 

All of the graphs above use Eloundou et al.'s primary measure of exposure to automation on the x-axis. They feed the 19,265 O*NET tasks to human and LLM graders, who rate the task's **exposure**: "whether access to an LLM or LLM-powered system would reduce the time required for a human to [...] complete a task by at least 50 percent."{% sidenote "barcmis-id" "The missing bit in brackets mentions Detailed Work Activities or DWAs, which are parallel to tasks." %} The raw ratings are converted into $$\beta$$ scores, which weights easily automatable tasks as more automatable than 

Acemoglu uses none of this. He uses an unpublished 

