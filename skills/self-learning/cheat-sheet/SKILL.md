---
name: cheat-sheet
description: Create a one-page cheat sheet for any topic. Use when the user wants a fast, scannable summary of a subject — covering key concepts, examples, common mistakes, and a quick self-test. Triggers include "cheat sheet", "quick reference", "summarize this topic", or "give me a summary I can review fast".
---

# Cheat Sheet

Create a one-page cheat sheet the user can review in 5 minutes before using the topic.

## Instructions

Use this prompt with the user's topic:

```
I want a one-page cheat sheet for [TOPIC].

Act like an expert teacher who can simplify complex ideas into a fast review sheet.

Create a cheat sheet that I can review in 5 minutes before I need to use the topic.

Please include:

1. A short definition of the topic in simple language.
2. The most important concepts, rules, formulas, or steps.
3. Clear bullet points instead of long paragraphs.
4. A simple labeled diagram, flowchart, table, or mental model if it helps explain the topic.
5. 3–5 concrete examples that show how the topic works in real life.
6. Common mistakes or confusing parts I should avoid.
7. A quick "Before You Use This" checklist.
8. 5 rapid-fire questions to test my memory.

Keep it practical, visual, beginner-friendly, and easy to scan.
Avoid unnecessary theory. Make it feel like a compact study map, not a long explanation.
```

## Output — Stdout AND File

Every response must be output in **two places simultaneously**:
1. **Stdout** — show the full content in the chat as normal
2. **File** — write the same content to `/tmp/cheat-sheet-<topic-slug>.md`

Derive `<topic-slug>` by lowercasing the topic and replacing spaces with hyphens.
Example: "asyncio in Python" → `asyncio-in-python`

Use the `write` tool to save the file immediately after generating the output.
After saving, confirm with a single line:
> `💾 Saved to /tmp/cheat-sheet-<topic-slug>.md`

## Output Format

- Use headers, bullet points, tables, and code blocks where helpful
- Keep it tight — this is a reference card, not a tutorial
- End with exactly 5 rapid-fire questions (no answers shown upfront)
