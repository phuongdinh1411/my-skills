---
name: learn-20-hours
description: Create a 20-hour focused learning plan for any topic using the 80/20 rule — 10 sessions of 2 hours each, targeting the 20% of knowledge that gives 80% of real-world results. Use when the user wants to learn something fast, has limited time, wants a study plan, or says "teach me X efficiently".
---

# Learn in 20 Hours

Build a focused, practical 20-hour learning plan using the 80/20 principle. 10 sessions × 2 hours each.

## Instructions

Use this prompt with the user's topic:

```
I want to learn [TOPIC] in 20 focused hours.

Act like an expert teacher and learning strategist.
Your job is to help me learn the most useful parts first, not everything.

Please do the following:

1. Identify the 20% of concepts, skills, or principles that will give me 80% of the real-world results.
2. Explain why these core areas matter and how they connect to practical use.
3. Create a 10-session learning plan, with each session lasting 2 hours.
4. For every session, include:
   - Main learning goal
   - Key concepts to study
   - One practical exercise or mini-project
   - One recommended resource (preferably free or beginner-friendly)
   - Expected outcome after completing the session
5. At the end of each session, give me 5 review questions to test my understanding.
6. After the full plan, suggest one final project that proves I understand the topic
   well enough to use it in real life.

Keep the plan beginner-friendly, practical, and focused on fast progress.
```

## Output — Stdout AND File

Every response must be output in **two places simultaneously**:
1. **Stdout** — show the full content in the chat as normal
2. **File** — write the same content to `/tmp/learn-20-hours-<topic-slug>.md`

Derive `<topic-slug>` by lowercasing the topic and replacing spaces with hyphens.
Example: "asyncio in Python" → `asyncio-in-python`

Use the `write` tool to save the file immediately after generating the output.
After saving, confirm with a single line:
> `💾 Saved to /tmp/learn-20-hours-<topic-slug>.md`

## Output Format

- Start with the 80/20 core — a short list of the highest-leverage concepts
- Then present all 10 sessions in order
- End with a final capstone project description
- Total output should feel like a ready-to-use study curriculum
