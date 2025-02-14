---
layout: post
title:  "Anthropic Economic Index"
date:   2025-02-14
categories: post
---

Anthropic this week launched their [Economic Index](https://www.anthropic.com/news/the-anthropic-economic-index), a research group focused on the economic impacts of AI. 

This is an interesting time for economists interested in AI. Not to take away from Anton Korineks, Chad Joneses, and Daron Acemoglu's who have been writing about the topic for years, but it feels like the field is sitting up and paying attention. Much of this is driven by industry. OpenAI has also started an "Economic Impacts Team", this one (unlike Anthropic), led by an economist, Dr Ronnie Chatterji from Duke. As with any new sub-field, we are [not always covering ourselves in glory](https://x.com/connoraxiotes/status/1889407109080515037), but 

As an illustration of how quickly the economics of AI are changing and what we might expect in the short term, I'm going to write about a very recent paper, the questions being asked, the data being used, and how economists can view a rapidly changing technology. I'm using a 2024 paper by Daron Acemoglu: "The Simple Macroeconomics of AI". 

Daron Acemoglu won the Nobel Prize last year. Looking at the slate of other winners, one might think that he won it for his extensive work on automation and AI: the physics prize went to Hinton and Hopfield for founding the field of deep learning; the chemistry prize went to, among two other computer scientists, Demis Hassabis, the founder of Google DeepMind. But Acemoglu won for his work on institutions and growth.{% sidenote "ajr-id" "Alongside Simon Johnson and James Robinson. Robinson is my favorite of the three. " %} He has long been a giant in the field of economics, startlingly productive, and the Nobel is another star in a long career. 

The "Simple Macro" paper assesses tasks to model how AI will affect the economy: which tasks will be automated, which tasks will be made more efficient, what new tasks will be invented, and how much does that matter for each task. Economists have traditionally viewed automation in this way, that workers become more productive and firms produce more output with fewer inputs. Acemoglu defines four ways in which AI can increase productivity:{% sidenote "citat-id" "This framework is from a [2019 paper](https://www.nber.org/system/files/working_papers/w24196/w24196.pdf) with Pascual Restrepo. " %} 

1. *Labor augmentation, or complementarities*: This is how economists have traditionally viewed technological advances — increasing the productivity of tasks humans already do. A better shovel, search engine, or saxophone fit in this category.
2. *Automation*: Taking a task currently done by humans, and having an AI model do it instead. The Roomba automated a janitor. Personally, where I would have hired an RA to classify some data in 2019, I can now get GPT-4 to do it.
3. *Deepening of automation*:{% sidenote "insec-id" "An economist might call this 'intensive margin automation'." %} Some tasks, e.g., vacuuming, are already automated — AI might improve the productivity of the Roomba, or GPT-5 might be faster and cheaper at classifying my data than GPT-4. 
4. *New tasks*: The invention of the computer invented the "task" of computer programming; the LLM has already invented the task of prompt engineering. A new task increases overall productivity. 

Acemoglu's paper seeks to quantify the effects of improvements in AI within this framework. "Simple Macro" ignores the third category,{% sidenote "sidenote-id" "Maxwell Tabarrok enthusiastically critiques this decision [here](https://www.maximum-progress.com/p/contra-acemoglu-on-ai). By ignoring deepening automation, Acemoglu treats the chatbot/language model as the key recent innovation of AI. This underrates the broad applicability of the transformer, which can also improve the productivity of robots, enable self-driving cars, and improve other already-automated tasks. I agree with Tabarrok that we'll see large increases in capital productivity from AI." %} and is mostly speculative on the fourth, focusing on negative welfare (not productivity) effects. The most rigorous section of the paper is focused on the first two categories: how the recent wave of AI tools increase productivity by automating and augmenting tasks currently performed by people. 

The paper aims to calculate the change in productivity from new AI tools based on estimates in other papers in the literature. The calculation comes down to this: the change in productivity is equal to the percent of worker tasks affected by AI, times the wage-weighted importance of those tasks, times the cost-savings from using AI over the status quo in those tasks. This falls out of Hulten's theorem, a general result on how microeconomic changes affect macroeconomic variables.{% sidenote "hult-id" "[Hulten 1978](https://gwern.net/doc/economics/1978-hulten.pdf), modernized in [Baqaee and Farhi 2019](https://scholar.harvard.edu/files/farhi/files/beyond_hulten_draft.pdf)" %} Acemoglu finds other papers which provide each variable in his calculation:{% sidenote "noata-id" "My notation, illustration only. TFP is Total Factor Productivity, a measure of how much output you get per input." %}

$$\Delta \text{TFP} =
\left( s_L \right)  % Percent of labor tasks exposed to AI
\times \left( \alpha \right)  % Share of exposed tasks that can be profitably automated
\times \left( \pi \right)  % Cost savings per affected task
\times \left( \phi \right)  % Labor share of total income$$

First, he uses Eloundou et al. (2023) to identify $s_L$, the **percent of labor exposed to automation**. Eloundou et al. feed the 19,000+ worker tasks categorized by O*NET to GPT-4 and human raters, asking them to rate how "exposed" to automation each task is. Acemoglu aggregates these into occupations, and weights each by its wage — finding that 20% of human labor is exposed to automation. 

Second, he uses Svanberg et al. (2024) to evaluate whether these **exposed tasks can be profitably automated**, $\alpha$. Svanberg et al. model the cost of humans and AI systems performing the same set of computer vision O*NET tasks, and find that 23% of vision tasks can be profitably automated — for the rest, the AI system would be too costly, or the current human behavior is too efficient.{% sidenote "asco-id" "This figure assumes AI costs remain stable. If they decrease 10% per year, perhaps 30% may be efficiently automated. Acemoglu addresses this in a robustness section." %}

Third, Acemoglu uses the average of two studies on productivity improvements due to AI to estimate $\pi$, the **cost savings** from automation. Noy and Zhang (2023) find that copy-writers work 40% faster with GPT-3.5 compared to those without; Brynjolfsson et al. (2023) find that customer support agents work 14% faster with an older version of GPT. Acemoglu uses the average of 27% cost-savings. Some more recent studies have roughly agreed with this figure,{% sidenote "agrefi-id" "[Dell'Acqua et al. (2023)](https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf) found BCG consultants completed their tasks 25% more quickly when using AI; [Cui et al. (2024)](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4945566) found that developers using AI completed 26% more tasks." %} while others estimate higher values.{% sidenote "hgihg-id" "[Toner-Rodgers (2024)](https://aidantr.github.io/files/AI_innovation.pdf) found that material scientists using AI assistance discovered 44% more materials than those without the AI tool. There are other reasons to believe that the 27% number is too low when estimating over the next decade. Most notably, [Merali (2024)](https://arxiv.org/pdf/2409.02391) looks at what scaling laws — that model performance improves with model size — imply about Acemoglu's calculations. This is a good paper; accounting for conservative model growth, he more than doubles the productivity effect used by Acemoglu, from 27% (the average of Noy and Zhange and Brynjolfsson) to 61%. " %} 

Finally, Acemoglu uses 54% as the share of total income $\phi$ that goes to paying wages, rather than other costs or profits. 

Putting it all together,

$$\begin{aligned}
\Delta \text{TFP} &= (0.20) \times (0.23) \times (0.27) \times (0.54) \\
                  &= 0.0067 \text{ (or 0.67%)}
\end{aligned}$$

This value is the percent increase in productivity from the new AI tools. Acemoglu's headline result, based on these values, is that GDP in 2034 will be at most 1.16% higher due to LLMs than it would have been without.{% sidenote "gdpp-id" "This comes from the 0.66% TFP level increase over 10 years and the estimated 0.93%–1.16% GDP increase, assuming a capital-output response proportional to TFP growth. If investment effects are stronger, the upper bound rises to 1.4%–1.56%." %}

This is where Anthropic comes in. Acemoglu's estimates come from forward-looking estimates of tasks which *might* be automated or augmented; the Anthropic Economic Index provides data on which tasks are already being done by AI. Their first product is a [dataset](https://huggingface.co/datasets/Anthropic/EconomicIndex){% sidenote "ctiat-id" "The citation is Handa et al. (2025) and the authors are [here](https://assets.anthropic.com/m/2e23255f1e84ca97/original/Economic_Tasks_AI_Paper.pdf). I'll refer to the dataset authors as Anthropic." %} based on four million conversations with their premier LLM, Claude. 

Using [a system](https://www.anthropic.com/research/clio) which hides the conversations from human reviewers, Anthropic maps each conversation to one of the tasks in the same O*NET categorization used by Eloundou et al. (2023) and Acemoglu. They exclude tasks which have fewer than 15 conversations mapped to them, and report the percent of conversations which performed each task.

I use these data to repeat Acemoglu's calculations.{% sidenote "rahel-id" "Thanks to his RA Can Yeşildere for clarity on methods." %} Anthropic finds 3,514 tasks which were automated or augmented by their models, compared to Acemoglu's 4,089. I  map these tasks to occupations, and following Acemoglu, label an occupation x% exposed if x% of its tasks are automated or augmented in the Anthropic data. Finally, I aggregate total labor exposure to automation, weighted by the median wage for each occupation.{% sidenote "wacge-id" "I use 2019 wage data; Acemoglu uses wage data pooled across 2019-2022. My guess is that using pre-pandemic data probably suppresses my estimates relative to Acemoglu's due to lower 2019 wage shares for AI-exposed jobs, which grew post-pandemic." %} This produces a GDP share of tasks being automatable or augmentable by Anthropic's AI models of 23.7%. 

There are two ways to use this number. If I interpret it as the share of labor which is *exposed* to automation in the future, it replaces $s_L=0.200$, or 20.0% of labor tasks exposed in Acemoglu's data. If I interpret it as the share of labor which is already automatable or augmentable, then it replaces the $s_L \times \alpha = 0.200*0.23 = 4.6\%$ calculation. 

In favor of the **first** interpretation, any task in the Anthropic data is exposed to automation, but we have limited information about how attractive that task is for automation. Anthropic provides the percentage of conversations which perform a task, but not the total number of times that that task is performed in the economy. For example, we know that ~1% of conversations have Claude "prepare, rewrite and edit copy to improve readability, or supervise others who do this work," but we don't know from this data how many times humans do that task without AI automating or augmenting them. Therefore, the Anthropic data informs us about exposure, but not about attractiveness.

For the **second** interpretation, we could assume that any task in the Anthropic data is inherently attractive for automation. The data only include tasks which show up in at least 15 of the ~one million conversations analyzed, and even those tasks at the bottom of the distribution are attractive to automate or augment with AI. For example, the "design and fabricate dental prostheses, or supervise dental technicians and laboratory bench workers who construct the devices" makes up less than 0.002% of all conversations in the Anthropic sample. Therefore, at least 15 times, users turned to Claude to help with their dental prostheses, indicating that this is currently a cost-effective approach to the task.{% sidenote "sidenote-id" "To be cost-effective means that it's cost-effective for *someone*, not for everyone. That it hasn't scaled — that a million dental protheses were designed and fabricated that week without Claude's help — doesn't mean that automating/augmenting the task is unattractive. The technology may not be sufficiently diffused yet." %} 

I am partial to the second interpretation. All tasks in the Anthropic data are both exposed *and* attractive to automation/augmentation. Keeping the cost savings and labor share stable, this changes the calculation:

$$\begin{aligned}
\Delta \text{TFP} &= \left( s_L \right) \times \left( \alpha \right)  \times \left( \pi \right)  \times \left( \phi \right) \\
                (0.237) \times (0.27) \times (0.54) \\
                  &= 0.0346 \text{ (or 3.46%)}
\end{aligned}$$

an increase of 5x. 

This result is so much larger than Acemoglu's because Anthropic's data shows that many more tasks are automatable or augmentable than the predictions of Eloundou et al. and Svanberg et al. 

Now that Anthropic is on board with releasing data like this, there is so much more we are interested in doing.
Automation vs augmentation and the API



Last summer, there was a cottage industry of people hating on the "Simple Macro" paper. Repeating or expanding on those critiques would be repetitive, as well as months late. And actually — I kinda like the paper. The Hulten theorem exercise is useful, and gives us a good basis for evaluating how automating and augmenting tasks using the current AI models will change work. I'm especially glad for the "bad new tasks" section. Acemoglu focuses on the negative welfare generated by super-powered social media, but chatbots already play large roles in the lives of millions of people. Economics arrived late to this question, and I'm interested in work on AI following Hunt Allcott's work on the [welfare effects of social media](https://web.stanford.edu/~gentzkow/research/facebook.pdf). 

The problem is that AI does not move at the speed of economics working papers. 
https://x.com/polynoamial/status/1888467178879627546?mx=2
Anthropic has not released any "reasoning"{% sidenote "reaso-id" "Such as DeepSeek R1, or OpenAI's o-series." %} models, which are much closer to automation than augmentation.

Diffusion!


