---
layout: post
title:  "Automation Progresses"
date:   2025-02-24
categories: post
---

Last week, [I wrote about](https://jablevine.com/articles/25/anthropic-economic-index) new data on LLM use from Anthropic, and used their data to expand Daron Acemoglu's "Simple Macroeconomics of AI" paper. The Anthropic data tell a different story than Acemoglu, implying a much higher rate of technology diffusion and productivity growth than he expected. I'm going to draw on a couple of aspects of the comparison. In particular, the Anthropic data allow me to identify the sectors where automation is happening faster and slower than expected. 

Acemoglu's calculations rely on a measure of *AI exposure* from "[GPTs are GPTs](https://arxiv.org/pdf/2303.10130)", a paper out of OpenAI.{% sidenote "fdsjkl-id" "The first GPT meaing Generative Pre-trained Transformers, and the second meaning General Purpose Technologies." } When researchers talk about "exposure," we mean to evaluate the level to which different aspects of human labor can be automated or augmented by AI capabilities. This is inherently a forward-looking measure, a prediction; and ideally the prediction factors in capability improvements. But innovation is not predictable, and exposure estimates from 2018 and 2022 would be worlds apart. The Anthropic data are the first data which can judge the accuracy of exposure predictions. 

The Anthropic data and the exposure estimates from the OpenAI paper by Eloundou et al. both are at the level of O\*NET tasks, a comprehensive list of all tasks performed by human laborers from the Bureau of Labor Statistics. Anthropic reports which tasks are being performed by their AI models, based on ~one million conversations.{% sidenote "adpe-id" "[Appendix E](https://assets.anthropic.com/m/2e23255f1e84ca97/original/Economic_Tasks_AI_Paper.pdf)." %} Eloundou et al. feed the 19,265 O\*NET tasks to human and LLM graders, who rate the task's exposure: "whether access to an LLM or LLM-powered system would reduce the time required for a human to [...] complete a task by at least 50 percent."{% sidenote "barcmis-id" "The missing bit in brackets mentions Detailed Work Activities or DWAs, which are parallel to tasks. This definition is not really about *automation* (AI replacing the human's labor), but *augmentation* (AI speeding the human's labor). Most papers in this literature do not clearly differentiate between the two. I will be as sloppy as Eloundou et al. and Acemoglu in my own usage." %} They use these human and LLM ratings to assign an exposure score to each task.{% sidenote "acdei-id" "Acemoglu uses an unpublished measure of exposure in his paper, and collapses low levels of exposure into a single category. I write about the difference between these two exposure measures below, and how the conclusions would change." %}

Tasks are more discrete than jobs. It's simpler to decide how automatable the task "Write grant proposals to procure external research funding" is than the entire job "Economics professor." But when assessing the effects of AI on labor, we care more about the effects on jobs than tasks. Once we have an exposure measure for each task, and a list of which tasks are in each job, we can measure how exposed the jobs are. This is how Eloundou et al. present their headline result: "around 80% of the U.S. workforce could have at least 10% of their work tasks affected by the introduction of LLMs, while approximately 19% of workers may see at least 50% of their tasks impacted."

The graph below compares Eloundou et al.'s estimate of AI exposure (x-axis) to Anthropic's data on actual Claude usage (y-axis). Each axis measures the "percent of tasks within an occupation exposed to automation," per the two datasets. Each point represents an occupation, with size indicating the estimate of people employed in that profession and color showing job family (both from the Bureau of Labor Statistics). Use the dropdown to focus on any particular job family.

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

There are a few reasons not to trust this graph. First, the Anthropic data are just a snapshot of one week and one LLM platform. Anthropic and their model Claude are not representative of the broader LLM industry

That said, let's speculate. These measures are generally correlated. Jobs which have higher exposure tend to have higher AI usage. But, if exposure was a perfect predictor of actual usage, the points would like on the 45° line. While some points are above, more are below, meaning that actual usage has not yet lived up to Eloundou et al.'s predictions.

There are many potential reasons for this, and these data are not able to tell us *why* some occupations which are exposed don't see high usage, or vice versa. To explore a few hypotheses, I'm going to zoom in on a few particularly interesting regions of this graph. First, the occupations which seem highly exposed to automation, but have so far show little actual use. 

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_bot_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>





there are the occupations which are seeing particularly high use of Claude's AI. 

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_top_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

Eloundou et al. predict that these 

These jobs are fairly-to-wholly automatable, and the Anthropic data backs this up. Alone out of all XXXX occupations, only mathematicians are fully automatable. Of the 11 tasks which make a mathematician, Eloundou et al.'s methodology finds that all 11 are exposed to current LLM technology.{% sidenote "gamma-id" "other fully autmatble by gaama" %} 

I think about these jobs as easy to automate, but also easy to diffuse into 

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

