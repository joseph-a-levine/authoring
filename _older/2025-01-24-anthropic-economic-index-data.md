---
layout: post
title:  "Automation Progresses"
date:   2025-02-24
categories: post
---

Last week, [I wrote about](https://jablevine.com/articles/25/anthropic-economic-index) new data on LLM use from Anthropic, and used their data to expand Daron Acemoglu's "Simple Macroeconomics of AI" paper. The Anthropic data tell a different story than Acemoglu, implying a much higher rate of technology diffusion and productivity growth than he expected. I'm going to draw on a couple of aspects of the comparison. In particular, the Anthropic data allow me to identify the sectors where automation is happening faster and slower than expected. 

Acemoglu's calculations rely on a measure of *AI exposure* from "[GPTs are GPTs](https://arxiv.org/pdf/2303.10130)", a paper out of OpenAI.{% sidenote "fdsjkl-id" "The first GPT meaing Generative Pre-trained Transformers, and the second meaning General Purpose Technologies."%} When researchers talk about "exposure," we mean to evaluate the level to which different aspects of human labor can be automated or augmented by AI capabilities. This is inherently a forward-looking measure, a prediction; and ideally the prediction factors in capability improvements. But innovation is not predictable, and exposure estimates from 2018 and 2022 would be worlds apart. The Anthropic data are the first data which can judge the accuracy of exposure predictions. 

The Anthropic data and the exposure estimates from the OpenAI paper by Eloundou et al. both are at the level of O\*NET tasks, a comprehensive list of all tasks performed by human laborers from the Bureau of Labor Statistics. Anthropic reports which tasks are being performed by their AI models, based on ~one million conversations.{% sidenote "adpe-id" "[Appendix E](https://assets.anthropic.com/m/2e23255f1e84ca97/original/Economic_Tasks_AI_Paper.pdf)." %} Eloundou et al. feed the 19,265 O\*NET tasks to human and LLM graders, who rate the task's exposure: "whether access to an LLM or LLM-powered system would reduce the time required for a human to [...] complete a task by at least 50 percent."{% sidenote "barcmis-id" "The missing bit in brackets mentions Detailed Work Activities or DWAs, which are parallel to tasks. This definition is not really about *automation* (AI replacing the human's labor), but *augmentation* (AI speeding the human's labor). Most papers in this literature do not clearly differentiate between the two. I will be as sloppy as Eloundou et al. and Acemoglu in my own usage." %} They use these human and LLM ratings to assign an exposure score to each task.{% sidenote "acdei-id" "Acemoglu uses an unpublished measure of exposure in his paper, and collapses low levels of exposure into a single category. I write about the difference between these two exposure measures [below](#where-acemoglu-and-eloundou-et-al-disagree), and how the conclusions would change." %}

Tasks are more discrete than jobs. It's simpler to decide how automatable the task "Write grant proposals to procure external research funding" is than the entire job "Economics professor." But when assessing the effects of AI on labor, we care more about the effects on jobs than tasks. Once we have an exposure measure for each task, and a list of which tasks are in each job, we can measure how exposed the jobs are. This is how Eloundou et al. present their headline result: "around 80% of the U.S. workforce could have at least 10% of their work tasks affected by the introduction of LLMs, while approximately 19% of workers may see at least 50% of their tasks impacted."

## Comparing predicted exposure to actual usage

The graph below compares Eloundou et al.'s estimate of AI exposure (x-axis) to Anthropic's data on actual Claude usage (y-axis). Each axis measures the "percent of tasks within an occupation exposed to automation," per the two datasets. Each point represents an occupation, with size indicating the estimate of people employed in that profession and color showing job family (both from the Bureau of Labor Statistics). Use the dropdown to focus on any particular job family.

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

There are a few reasons to be skeptical of these data. First, Anthropic is not representative of LLM usage. ChatGPT and Google's Gemini are ten and a thousand times more popular, respectively, and Anthropic's users tend to be more tech savvy. Second, Anthropic only analyses conversations through the chat UI, not their API. An API is much more amenable to automation than a chatbot; leaving out API data might supress the prevalence of certain tasks. Finally, the Anthropic data is only an existence proof - some worker, somewhere, found it valuable to use Claude for these tasks. 

That said, let's speculate. The exposure and usage measures are generally correlated. Jobs which have higher exposure tend to have higher AI usage. But if exposure was a perfect predictor of actual usage, the points would lie on the 45° line. There are more points below than above, meaning that actual usage has not yet lived up to Eloundou et al.'s predictions.

There are many potential reasons for this, and these data are not able to tell us *why* some occupations which are exposed don't see high usage, or vice versa. To explore a few hypotheses, I'm going to zoom in on a few particularly interesting regions of this graph. First, the occupations which seem highly exposed to automation, but have so far show little actual use. 

### Surprisingly un-automated

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_bot_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

One reason for low adoption in this region is technological ill-fit. The job furthest along that axis with zero actual use is "telephone operators": Eloundou et al. find that 14/16 of the tasks involved in being a telephone operator are exposed. Tasks like "Provide relay service for hearing-impaired users" or "Update directory information" *are* simple to automate with an LLM - but it is difficult to do through a chat UI. This is likely a weakness of the Anthropic data, rather than evidence that telephone operators are hard to automate.{% sidenote "sfdvbil-id" "Anyone who's been in SF recently will have seen plenty of billboards for start-ups automating customer service workflows." %}

Another potential reason for low realization of exposure is regulatory or procedural inertia. Also in that yellow zone are clerks, compliance officers, accountants, and auditors. A task like "Review accounts for discrepancies and reconcile differences" is straightforward for an LLM. But accountants are presumably discouraged from uploading their data to external servers. Some firms may have, or may soon have, internal tools which perform these tasks securely. But those actions wouldn't show up in these data.

Looking further left of these points, the pattern is similar. Around the 50% mark on the Eloundou et al. axis are Financial Managers. A friend of mine in this category says that AI would significantly speed up his workflow, for example "Analyze information to assess the current or future financial status of firms." Instead of reading a 200 page report, he could put it in Gemini and ask for the highlights. But there's the same concern about information security and the lack of guidance from the SEC which leaves conservative firms in conservative industries cautious to adopt AI tools. The technology is ready, the institutions aren't, so diffusion is slow.

### Unsurprisingly automated

Next, let's look at the the occupations which are seeing the *highest* usage of these tools.

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_top_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

These jobs benefit from using LLMs, but are not so scalable to require going through an API. Many varieties of teachers are present, who benefit on tasks like "Plan, evaluate, and revise curricula." Creative jobs like lyricists and graphic designers are also present in this region, but not always for their most creative tasks. A very common task for Claude is to "Confer with clients to discuss layout design;" an uncommon one is to "Prepare illustrations or rough sketches of material." Eloundou et al. predict that these are equally exposed.

That's not to say [these jobs are easy](https://en.wikipedia.org/wiki/Moravec%27s_paradox): Eloundou et al. predict that 100% of tasks performed by mathematicians are exposed to automation; this is the only 100% exposed job.{% sidenote "che-id" "This feels a bit cheeky; one of the authors on the Anthropic paper has a PhD in math." %} My theory of this region is that these jobs consiste of relatively atomic tasks, and have less oversight and more independence for technology use. A high school science teacher tells me that his school's wifi blocks ChatGPT for students' devices, but not teachers. Even if AI use is not yet formally encouraged, that's an acknowledgement that it's useful.

### Surprisingly automated

Finally, there are some jobs which Eloundou et al. expected to be mostly impervious to automation, but Anthropic users have disagreed. 

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_aei_scatter_plot_left_highlighted.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

This tail isn't as long as the first graph I highlighted - while there are jobs which Eloundou et al. think are 90% exposed but see zero actual use, there are no jobs which are 0% exposed and see 90% actual use. Instead, these are jobs like athletes or cooks, which have single or few tasks where Anthropic usage data disagree with the exposure metrics. For example, Claude commonly helps with "Assess[ing] performance following athletic competition," despite zero exposure for this task. Motorcycle mechanics also often use Claude to "Determine nature and extent of malfunction or damage."

Due to the small number of jobs and tasks in this region, this is likely just a bit of noise in Eloundou et al.'s grading method. What I take away is that LLM power users will seek AI's input on surprising and diverse questions, even if these uses don't become widespread.

## My takeaways 



## Where Acemoglu and Eloundou et al. disagree

I use the words "unsurprising" and "surprising" above in reference to tasks and jobs which do and don't match the exposure measure, respectively. Because most jobs lie below the 45° line, someone relying on Eloudou et al.'s exposure measure would be surprised by the low level of diffusion.{% sidenote "sddtim-id" "Eloundou et al. do not put a specific timeframe on the time period over which they're assessing exposure. Their rubric is assessing exposure *at that moment*, that is, sometime in early 2023." %} But measuring exposure differently changes 

Acemoglu uses a very different measure in "The Simple Macroeconomics of AI" from the "GPTs are GPTs" paper. He uses an earlier non-public version of Eloundou et al.'s dataset, which doesn't appear in the paper, and the methodology is not published.{% sidenote "tahcna-id" "Thanks again to Can Yeşildere for clarifying the Simple Macro methodology." %} Acemoglu takes a more discrete measure, which assigns tasks an automation score from 0-4, and collapses tasks with scores \<3 into a single zero-automation category. As a result, the Acemoglu measure estimates much lower exposure than the measure I showed you above.

<br>

<iframe 
    src="{{ '/assets/fig/eloundou_acemoglu_comparison.html' | relative_url }}" 
    width="100%" 
    height="600"
    style="border:none; outline:none;">
</iframe>

This graph shows the Eloundou measure on the x-axis, as above, and the Acemoglu measure on the y-axis. 



This section is going to get into the details of the methods, but it's worth it - you'll get an interesting payoff. 


Acemoglu uses none of this. He uses an unpublished 

