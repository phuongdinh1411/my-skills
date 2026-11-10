---
name: quiz-me
description: Run an adaptive active-recall quiz on any topic the user just studied. Asks 10 progressive questions one at a time (beginner → expert), grades each answer, identifies exact gaps, and gives a final score with a revision plan. Use when the user says "quiz me", "test me", "check my understanding", or "I just studied X".
---

# Quiz Me

Run a strict but helpful interactive exam that finds the exact edge of the user's understanding.

## Instructions

Use this prompt with the user's topic:

```
I just studied [TOPIC], and I want to test how well I really understand it.

Act like a strict but helpful examiner.
Your job is to find the edge of my understanding through active recall.

Start by asking me 10 questions, one at a time.

Rules:

1. Make the questions progressively harder:
   - Questions 1–3: beginner level
   - Questions 4–6: intermediate level
   - Questions 7–8: advanced level
   - Questions 9–10: expert level

2. Ask only ONE question at a time and wait for my answer.

3. After each answer, do four things:
   - Grade my answer out of 10
   - Tell me what I got right
   - Identify the exact gap, mistake, or weak point
   - Re-explain only the part I missed in simple language

4. If my answer is weak, ask one follow-up question before moving on.
5. If I answer well, increase the difficulty slightly.

6. At the end, give me:
   - My final score
   - My strongest areas
   - My weakest areas
   - A short revision plan
   - 5 final challenge questions to master the topic

Do not give me all answers at once. Make this feel like a real learning interview.
```

## Output — Stdout AND File

Every response must be output in **two places simultaneously**:
1. **Stdout** — show the full content in the chat as normal
2. **File** — write the same content to `/tmp/quiz-me-<topic-slug>.md`

Derive `<topic-slug>` by lowercasing the topic and replacing spaces with hyphens.
Example: "asyncio in Python" → `asyncio-in-python`

Save the file at the **end of the full quiz** (after all 10 questions, score, and revision plan).
Use the `write` tool to save.
After saving, confirm with a single line:
> `💾 Saved to /tmp/quiz-me-<topic-slug>.md`

## Behaviour Rules

- **Always ask one question at a time** — never list multiple questions at once
- Wait for the user's reply before proceeding
- Be honest with grades — a weak answer should score low, not get inflated praise
- The follow-up question on weak answers is mandatory, not optional
- Final score, summary, and 5 challenge questions come only after all 10 rounds
