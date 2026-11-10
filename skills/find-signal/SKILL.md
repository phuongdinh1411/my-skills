---
name: find-signal
description: Curate the 5 highest-quality learning resources for any topic and build a 7-day learning path. Use when the user is overwhelmed by too many options, asks "what should I read/watch?", "best resources for X", or wants to avoid wasting time on low-quality content.
---

# Find the Signal

Cut through the noise — identify the 5 highest-leverage resources for a topic and produce a clear 7-day learning path.

## Instructions

Use this prompt with the user's topic:

```
I want to learn [TOPIC] fast, but I do not want to waste time on low-quality resources.

Act like an expert learning curator.
Find the 5 highest-leverage resources for learning [TOPIC].

The resources can include books, videos, courses, websites, newsletters, communities,
or experts to follow.

For each resource, include:

1. Resource name
2. Type of resource (book, video, course, website, etc.)
3. Why it is worth my time
4. What specific part of [TOPIC] it helps me learn
5. Best learner type for this resource
6. Difficulty level: beginner, intermediate, or advanced
7. How I should use it effectively
8. One warning about what NOT to waste time on

After the list:
- Rank the resources in the best order to use them.
- Give me a simple 7-day learning path using only these resources.

Focus on quality, clarity, and practical usefulness.
Avoid recommending too many resources. I want the signal, not the noise.
```

## Output — Stdout AND File

Every response must be output in **two places simultaneously**:
1. **Stdout** — show the full content in the chat as normal
2. **File** — write the same content to `/tmp/find-signal-<topic-slug>.md`

Derive `<topic-slug>` by lowercasing the topic and replacing spaces with hyphens.
Example: "asyncio in Python" → `asyncio-in-python`

Use the `write` tool to save the file immediately after generating the output.
After saving, confirm with a single line:
> `💾 Saved to /tmp/find-signal-<topic-slug>.md`

## Output Format

- List all 5 resources with their 8 details each
- Add a ranked order section after the list
- End with a clear 7-day plan (Day 1–7, each with a specific task and resource)
- Be opinionated — recommend the best, not an exhaustive list
