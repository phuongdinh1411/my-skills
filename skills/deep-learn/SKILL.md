---
name: deep-learn
description: Run the full 6-step deep learning flow on any topic in sequence — Find Signal, Learning Ladder, Learn in 20 Hours, Feynman Loop, Quiz Me, Cheat Sheet. Use when the user wants to learn a topic thoroughly from scratch, says "teach me X deeply", "I want to master X", or "walk me through learning X".
---

# Deep Learn

A guided, 6-step learning journey for any topic. Each step builds on the previous one.

## Flow

```
Step 1: Find Signal       → discover the best resources
Step 2: Learning Ladder   → map the full skill roadmap
Step 3: Learn in 20 Hours → build a focused study plan
Step 4: Feynman Loop      → confirm deep understanding
Step 5: Quiz Me           → expose blind spots
Step 6: Cheat Sheet       → create a final reference card
```

---

## Output — Stdout AND File

Every step must be output in **two places simultaneously**:
1. **Stdout** — show the full content in the chat as normal
2. **File** — write the same content to `/tmp/deep-learn-<topic-slug>/step-N-<name>.md`

Derive `<topic-slug>` by lowercasing the topic and replacing spaces with hyphens.
Example: "asyncio in Python" → `asyncio-in-python`

Create the directory before Step 1 if it doesn't exist.
Use the `write` tool to save the file immediately after generating each step — do not wait until the end.

File naming:
- `step-1-find-signal.md`
- `step-2-learning-ladder.md`
- `step-3-learn-20-hours.md`
- `step-4-feynman-loop.md`
- `step-5-quiz-me.md`
- `step-6-cheat-sheet.md`

After saving, confirm with a single line:
> `💾 Saved to /tmp/deep-learn-<topic-slug>/step-N-<name>.md`

---

## Instructions

When this skill is triggered, follow these rules exactly:

1. **Ask for the topic first** if the user hasn't provided one:
   > "What topic do you want to deep-learn?"

2. **Run each step in order.** After completing each step, pause and ask:
   > "Ready to move to Step N: [Step Name]? Or do you want to spend more time here?"

3. **Never skip a step** unless the user explicitly says so.

4. **Keep track of the topic** — use the exact same topic wording across all 6 steps.

5. **At the start**, show the user the full roadmap so they know what's coming:
   ```
   Here's your learning journey for [TOPIC]:

   ✅ Step 1: Find Signal       — find the 5 best resources + 7-day path
   ⬜ Step 2: Learning Ladder   — map beginner → expert in 5 levels
   ⬜ Step 3: Learn in 20 Hours — 80/20 study plan, 10 sessions × 2hrs
   ⬜ Step 4: Feynman Loop      — teach-back loop until truly understood
   ⬜ Step 5: Quiz Me           — 10 progressive questions + score
   ⬜ Step 6: Cheat Sheet       — final one-page reference card

   Let's start with Step 1. 🚀
   ```

6. **Update the checklist** as each step completes (✅ done, 🔄 in progress, ⬜ upcoming).

---

## Step Prompts

### Step 1 — Find Signal
```
I want to learn [TOPIC] fast, but I do not want to waste time on low-quality resources.

Act like an expert learning curator.
Find the 5 highest-leverage resources for learning [TOPIC].

The resources can include books, videos, courses, websites, newsletters, communities,
or experts to follow.

For each resource, include:
1. Resource name
2. Type of resource
3. Why it is worth my time
4. What specific part of [TOPIC] it helps me learn
5. Best learner type for this resource
6. Difficulty level: beginner, intermediate, or advanced
7. How I should use it effectively
8. One warning about what NOT to waste time on

After the list:
- Rank the resources in the best order to use them.
- Give me a simple 7-day learning path using only these resources.
```

---

### Step 2 — Learning Ladder
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
```

---

### Step 3 — Learn in 20 Hours
```
I want to learn [TOPIC] in 20 focused hours.

Act like an expert teacher and learning strategist.
Your job is to help me learn the most useful parts first, not everything.

1. Identify the 20% of concepts that give 80% of real-world results.
2. Explain why these core areas matter.
3. Create a 10-session plan, each session 2 hours, including:
   - Main learning goal
   - Key concepts to study
   - One practical exercise or mini-project
   - One recommended resource
   - Expected outcome
4. End each session with 5 review questions.
5. Suggest one final capstone project.
```

---

### Step 4 — Feynman Loop
```
I want to understand [TOPIC] deeply using the Feynman learning method.

Act like a patient teacher. First, explain [TOPIC] to me in simple language,
as if I am 12 years old. Use simple words, real-life examples, and analogies.

After explaining, ask me to explain the topic back in my own words.

Then:
1. Identify what I explained correctly.
2. Find every gap, mistake, or missing idea.
3. Re-teach only the parts I got wrong or missed.
4. Ask me to explain it again in a cleaner way.
5. Repeat this loop until my explanation is simple, accurate, and complete.

At the end, give me a final clean explanation I can save as notes.
```

---

### Step 5 — Quiz Me
```
I just studied [TOPIC], and I want to test how well I really understand it.

Act like a strict but helpful examiner. Ask me 10 questions, one at a time.

Make the questions progressively harder:
- Questions 1–3: beginner level
- Questions 4–6: intermediate level
- Questions 7–8: advanced level
- Questions 9–10: expert level

After each answer:
- Grade it out of 10
- Tell me what I got right
- Identify the exact gap or weak point
- Re-explain only the part I missed

At the end, give me: final score, strongest areas, weakest areas,
a short revision plan, and 5 final challenge questions.
```

---

### Step 6 — Cheat Sheet
```
I want a one-page cheat sheet for [TOPIC].

Act like an expert teacher. Create a cheat sheet I can review in 5 minutes.

Include:
1. A short definition in simple language
2. The most important concepts, rules, or steps
3. Clear bullet points (no long paragraphs)
4. A diagram, table, or mental model if helpful
5. 3–5 concrete real-life examples
6. Common mistakes to avoid
7. A quick "Before You Use This" checklist
8. 5 rapid-fire memory questions

Keep it practical, visual, and beginner-friendly.
```

---

## Completion

When all 6 steps are done, congratulate the user:

```
🎉 You've completed the full Deep Learn journey for [TOPIC]!

Here's what you now have:
✅ Step 1: Best resources + 7-day path       (Find Signal)
✅ Step 2: Full skill roadmap                (Learning Ladder)
✅ Step 3: 20-hour study plan                (Learn in 20 Hours)
✅ Step 4: Deep understanding confirmed      (Feynman Loop)
✅ Step 5: Knowledge gaps identified & fixed (Quiz Me)
✅ Step 6: One-page reference card           (Cheat Sheet)

You're ready to use [TOPIC] in the real world. 🚀
```
