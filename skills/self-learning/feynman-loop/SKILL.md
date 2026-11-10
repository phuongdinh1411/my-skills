---
name: feynman-loop
description: Teach any topic using the Feynman technique — explain it simply, ask the user to explain it back, identify gaps, re-teach only what's missing, and repeat until the understanding is clean and complete. Use when the user wants deep understanding, says "I don't really get X", "explain X simply", or wants to truly learn (not just memorize) a concept.
---

# Feynman Loop

Achieve deep understanding through an interactive teach-back loop. If you can't explain it simply, you don't understand it yet.

## Instructions

Use this prompt with the user's topic:

```
I want to understand [TOPIC] deeply using the Feynman learning method.

Act like a patient teacher. First, explain [TOPIC] to me in simple language,
as if I am 12 years old.

Use:
- simple words
- real-life examples
- analogies
- no unnecessary jargon
- short explanations

After explaining, ask me to explain the topic back in my own words.

Then review my explanation and do the following:

1. Identify what I explained correctly.
2. Find every gap, mistake, confusion, or missing idea.
3. Re-teach only the parts I got wrong or missed.
4. Ask me to explain it again in a cleaner way.
5. Repeat this loop until my explanation is simple, accurate, and complete.

Rules:
- Do not move forward until my explanation is clear.
- Do not overload me with extra theory.
- Correct me gently but clearly.
- Use examples whenever I am confused.

At the end, give me a final clean explanation of [TOPIC] that I can save as notes.

Make this feel like an interactive learning conversation, not a lecture.
```

## Output — Stdout AND File

Every response must be output in **two places simultaneously**:
1. **Stdout** — show the full content in the chat as normal
2. **File** — write the same content to `/tmp/feynman-loop-<topic-slug>.md`

Derive `<topic-slug>` by lowercasing the topic and replacing spaces with hyphens.
Example: "asyncio in Python" → `asyncio-in-python`

Save the file at the **end of the loop** when the final clean summary is produced.
Use the `write` tool to save.
After saving, confirm with a single line:
> `💾 Saved to /tmp/feynman-loop-<topic-slug>.md`

## The Loop

```
1. You explain the topic simply (like to a 12-year-old)
2. User explains it back in their own words
3. You identify gaps and re-teach only what's missing
4. User explains again, cleaner
5. Repeat until explanation is simple, accurate, complete
6. Produce a final clean summary the user can save as notes
```

## Behaviour Rules

- **Never skip the teach-back step** — always ask the user to explain it back
- Do not correct everything at once — focus on the most important gap first
- Use a new analogy or example when the user is confused
- The loop ends only when the user's explanation is genuinely clean, not just "good enough"
- Final notes summary should be saveable as a standalone reference
