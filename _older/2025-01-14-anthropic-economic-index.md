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

$$\Delta \text{TFP} =  \left( \theta \times s_L^{\text{affected}} \right) \times \pī \times (1 - s_K) $$

First, he uses Eloundou et al. (2023) to identify the **percent of labor exposed to automation**. Eloundou et al. feed the 19,000+ worker tasks categorized by O*NET to GPT-4 and human raters, asking them to rate how "exposed" to automation each task is. Acemoglu aggregates these into occupations, and weights each by its wage — finding that 20% of human labor is exposed to automation. 

Second, he uses Svanberg et al. (2024) to evaluate whether these **exposed tasks can be profitably automated**. Svanberg et al. model the cost of humans and AI systems performing the same set of computer vision O*NET tasks, and find that 23% of vision tasks can be profitably automated — for the rest, the AI system would be too costly, or the current human behavior is too efficient.{% sidenote "asco-id" "This figure assumes AI costs remain stable. If they decrease 10% per year, perhaps 30% may be efficiently automated. Acemoglu addresses this in a robustness section." %}

Third, Acemoglu uses the average of two studies on productivity improvements due to AI to estimate the **cost savings**. 
There are other reasons to believe that the 27% number is too low when estimating over the next decade. Most notably, [Merali (2024)](https://arxiv.org/pdf/2409.02391) looks at how scaling laws — that xyz — affect Acemoglu's calculations. This is a good paper; accountiung for model growth, he more than doubles the productivity effect used by Acemoglu, from 27% (the average of Noy and Zhange and Brynjolfsson) to 61%. 

Finally, Acemoglu uses 54% as the share total income that goes to paying wages, rather than other costs or profits. 



This is where the Anthropic Economic Index comes in. Their first product is a [dataset]() based on four million conversations with their premier LLM, Claude. This dataset is perfect for evaluating the values in Acemoglu's calculation. Using a system which hides the conversations from human reviewers, Anthropic assigns each conversation to one of the tasks in the same O*NET categorization used by Eloundou et al. and Acemoglu. 

This dataset offers a much more accurate and up-to-date value for the bill-weighted share of exposed occupations. 
Automation vs augmentation and the API

The second value in Acemoglu's calculation is the proportion of the tasks which can *profitably* be automated using AI. He uses an estimate from Svanberg et al. (2024) that, out of the "vision"{% sidenote "sidenote-id" "This is a random sidenote" %} tasks which have "AI exposure", 23% are attractive to automate. As there was no other data on the proportion of AI-exposed tasks which are worthwhile to automate, Acemoglu scales the share of exposed automation by the Svanberg estimate (0.20*0.23). 

There are two ways to interpret the Anthropic data. **First**, any task in the Anthropic data is exposed to automation, but we have limited information about how attractive that task is for automation. Anthropic provides the percentage of conversations which perform a task, but not the total number of times that that task is performed in the economy. For example, we know that ~1% of conversations have Claude "prepare, rewrite and edit copy to improve readability, or supervise others who do this work," but we don't know from this data how many times humans do that task without AI automating or augmenting them. Therefore, the Anthropic data informs us about exposure, but not about attractiveness.

**Second**, we could assume that any task in the Anthropic data is inherently attractive for automation. The data only include tasks which show up in at least 15 of the ~one million conversations analyzed, and even those tasks at the bottom of the distribution are attractive to automate or augment with AI. For example, the "design and fabricate dental prostheses, or supervise dental technicians and laboratory bench workers who construct the devices" makes up less than 0.002% of all conversations in the Anthropic sample. Therefore, at least 15 times, users turned to Claude to help with their dental prostheses, indicating that this is currently a cost-effective approach to the task.{% sidenote "sidenote-id" "To be cost-effective means that it's cost-effective for *someone*, not for everyone. That it hasn't scaled — that a million dental protheses were designed and fabricated that week without Claude's help — doesn't mean that automating/augmenting the task is unattractive. The technology may not be sufficiently diffused yet." %} 

I am partial to the second interpretation. All tasks in the Anthropic data are both exposed *and* attractive to automation/augmentation. 


Hard and easy tasks.

Now that Anthropic is on board with releasing data like this, there is so much more we are itnerested in doing.

Last summer, there was a cottage industry of people hating on the "Simple Macro" paper. Repeating or expanding on those critiques would be repetitive, as well as months late. And actually — I kinda like the paper. The Hulten theorem exercise is useful, and gives us a good basis for evaluating how automating and augmenting tasks using the current AI models will change work. I'm especially glad for the "bad new tasks" section. Acemoglu focuses on the negative welfare generated by super-powered social media, but chatbots already play large roles in the lives of millions of people. Economics arrived late to this question, and I'm interested in work on AI following Hunt Allcott's work on the [welfare effects of social media](https://web.stanford.edu/~gentzkow/research/facebook.pdf). 

The problem is that AI does not move at the speed of economics working papers. 
https://x.com/polynoamial/status/1888467178879627546?mx=2
Anthropic has not released any "reasoning"{% sidenote "reaso-id" "Such as DeepSeek R1, or OpenAI's o-series." %} models, which are much closer to automation than augmentation.




