
# Tutorial: Planning for Storytelling

## Abstract

In this tutorial we will demonstrate the role that planning, or planning-based representations, can play in narrative
generation methods. The plan becomes the representation of the story and also that of the story world, and thus we use
Planning to create logical, believable, and coherent stories (narratives) in a variety of domains. We will cover several
techniques, including modern approaches that make use of Large Language Models (LLMs) and provide the opportunity for
attendees to play with the technology themselves live.


## About the authors

**Nisha Simon** is a PhD candidate at Queen’s University under the supervision of Prof. Christian Muise, and a Teaching
Assistant with the School of Computing. Her interests are in researching structured learning from unstructured
text. Before beginning her PhD degree program, she worked as a Systems Analyst and Web Developer for several years.
Storytelling with Automated Planning is a key part of her current research. When she is not teaching Transformer-based
Models how to tell logical, coherent and believable stories, she enjoys reading, painting, and listening to music.

**Christian Muise** is an Assistant Professor in the School of Computing at Queen's University. His research focuses on
a variety of automated planning techniques, with a specialty in reasoning under uncertainty and model acquisition. He
has presented multiple ICAPS tutorials in the past (on Planning.Domains and model acquisition), and is the chief
architect of several automated planning frameworks (including planning.domains and planutils).

**Rogelio E. Cardona-Rivera** is an Assistant Professor in the Kahlert School of Computing at the University of Utah.
His research focuses on the design of games, systems where users direct an unfolding experience by taking on
ludic/dramatic roles. He has a strong track-record of publishing in the space of synthesizing narratives.

**Arnav Jhala** is an associate professor of Computer Science at NC State University. Prof. Jhala’s research group
investigates computational structures and methods that are useful in representing and mediating human interpretation
and communication of narrative in interactive visual media, such as film and games. The Jhala research group uses
symbolic and probabilistic tools to represent and construct coherent visual discourse and apply generative techniques
for automated and semi-automated tools to interpret and collaboratively create visual narratives.

**Julie Porteous** is an Associate Professor in the School of Computing Technologies at RMIT University, Melbourne.
She is a long-standing member of the ICAPS community and her work has had an emphasis on (1) Automated Planning; (2)
Interactive Narratives (application of automated planning to narrative generation); (3) Automated acquisition of AI
planning domain models; and (4) Authoring tools for Interactive Narratives.

**R. Michael Young** is Professor and Chair of the Division of Games, an Adjunct Professor in the School of Computing
and an Adjunct Professor of Philosophy at the University of Utah in Salt Lake City, UT, where he also directs the
Liquid Narrative research group. Together with his students and research staff, his work in the Liquid Narrative group
focuses on the development of computational models of interactive narrative with applications to computer games,
educational and training systems and virtual environments.

**Patrik Haslum** is an Associate Professor at the Australian National University, where he focuses on a wide variety
of research in automated planning. Most notably for this tutorial, Dr Haslum has a track record of automated story
telling through the lens of automated planning, and continues to pursue avenues of research in this area.

## Tutorial Structure and Auxiliary Materials (subject to change)


**In-person Presenters** : Nisha Simon, Christian Muise, Rogelio E. Cardona-Rivera


***Module 1: OVERVIEW***


***Presenter*** : Nisha Simon


A story can be conceptualized as the telling of a sequence of events that take place within some virtual world. It can therefore be well-modeled by a plan. The plan can represent (i) the sequence of events that actually happen in the story i.e. the 'plot', or it can represent (ii) the sequence of events are they are told to the audience i.e. the 'narrative'. The 'states' that the plan traverses can encompass (i) the `physical’ state of the story world; (ii) the state of mind of the characters in the story world (their beliefs, motivations, plans, etc.); (iii) the state of the audience's knowledge/understanding of the world and events of the story; or any combination of these. Using Fully Observable Deterministic (FOD) planning and children’s stories, we can build narratives that take a character from the starting state to the goal state, within the given environment.



***Module 2 : WAYS TO MODEL A NARRATIVE - PLAN SPACE PLANNING***


***Presenter*** : Rogelio E. Cardona-Rivera


Nodes in a graph are partial plans and edges are plan refinements. The underlying search space is directly shaped so that partial plans become solutions (or fail to do so). Plan-space narrative planning affords modeling story phenomena in terms of narrative-theoretic plan construction flaws and fixes.



***Module 3 : WAYS TO MODEL A NARRATIVE - HIERARCHICAL PLANNING***


***Presenter*** : Rogelio E. Cardona-Rivera


More expressive and complex than classical planning: STRIPS-style primitive actions are complemented with isomorphic more-abstract compound actions that require decomposition, or associated sub-plan. This is well-suited for representing a wide variety of story phenomena that depend on abstraction, across the narrative layers. In plot, for example, character intentions can be straightforwardly codified. Hierarchical story directors afford users significant
power to define narrative plan quality aligned to their authorial intent, across all narrative layers.



***Module 4 : WAYS TO MODEL A NARRATIVE - HEURISTIC SEARCH***


***Presenter*** : Rogelio E. Cardona-Rivera


Using constraints in the narrative domain to encode narrative phenomena and guide story development. Using character intentions (e.g. Glaive) to calculate heuristic estimates. The narrative planning challenge is how best to encode narrative-theoretic phenomena, in order to leverage the efficient performance of such approaches.



***Module 5 : PLANNING FROM A FOCALIZED PERSPECTIVE - INTENTIONALITY***


***Presenter*** : Nisha Simon


***Contributor*** : Patrik Haslum


Theory of mind in Narrative generation. Creating a story often involves taking another's perspective: The story author plans from the point of view of characters in the story, to ensure their actions are consistent with their beliefs and motivations. Because stories often center on characters' interactions, characters sometimes plan from the point of view of other characters. Consequently, a key question in narrative planning is how to represent multiple view points within a plan.



***Module 6 : PLANNING FROM A CHARACTER'S POINT-OF-VIEW***


***Presenter*** : Nisha Simon


'Choose-Your-Own-Adventure' (CYOA) stories are interactive narratives where the reader assumes a fictional persona and then takes action to influence the development of the unfolding story (for example, by choosing from various paths which to take in order to reach the end). `Choose-Your-Own-Adventure’ stories can, therefore, be thought of as a representation of an agent proceeding through a non-deterministic environment in order to achieve a certain goal. The agent is the story itself, and the non-determinism is driven by the reader. The reader is not privy to the details of the generated plan. I.e., the reader is unaware of which paths are 'better' and which paths are 'worse' paths within the story. Instead, the reader selects their choices for each stage of the story through an interactive text-based game whose logic is based on a contingent plan. The reader’s input is merely an instruction to the system to follow a specific edge on the underlying directed graph. The entire plan representation itself already exists in totality and is not updated based on the reader’s choices. Thus, CYOA stories can be created using Fully Observable Non-Deterministic (FOND) Automated Planning.



***Interactive Demos (Hands-on Session)***


***Presenters*** : Nisha Simon, Christian Muise, Rogelio E. Cardona-Rivera
