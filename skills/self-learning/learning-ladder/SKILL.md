---
name: learning-ladder
description: Build a structured learning roadmap for any topic broken into 5 progressive levels from complete beginner to confident practitioner. Use when the user wants to learn something step by step, asks "where do I start?", wants a skill roadmap, or says "I don't know what to learn next".
---

# Learning Ladder

Break any topic into 5 clear difficulty levels so the user climbs it one step at a time without skipping foundations.

## Instructions

Use this prompt with the user's topic:

```
I want to learn [TOPIC] step by step, without skipping important foundations.

Act like an expert teacher and skill coach. Break [TOPIC] into 5 clear difficulty levels,
from complete beginner to confident practitioner.

For each level, include:

1. Level name
2. What I should understand at this stage
3. What mastery looks like at this level
4. The most important concepts or skills to focus on
5. One milestone that proves I am ready to move forward
6. One hands-on exercise or mini-project
7. Common mistakes learners make at this level
8. A simple self-check question before moving to the next level

Structure the levels like this:
- Level 1: Complete Beginner
- Level 2: Basic Understanding
- Level 3: Practical User
- Level 4: Problem Solver
- Level 5: Confident Practitioner

Keep the explanation practical, beginner-friendly, and focused on real progress.
Do not overload me with too much theory. Help me climb the topic one level at a time.
```

## Output — Stdout AND File

Every response must be output in **two places simultaneously**:
1. **Stdout** — show the full content in the chat as normal
2. **File** — write the same content to `/tmp/learning-ladder-<topic-slug>.md`

Derive `<topic-slug>` by lowercasing the topic and replacing spaces with hyphens.
Example: "asyncio in Python" → `asyncio-in-python`

Use the `write` tool to save the file immediately after generating the output.
After saving, confirm with a single line:
> `💾 Saved to /tmp/learning-ladder-<topic-slug>.md`

## Output Format

- Use a clear heading for each level
- Each level should contain all 8 items above
- Keep milestones concrete and testable (e.g., "build X", "explain Y without notes")
- Keep exercises doable in under 2 hours
