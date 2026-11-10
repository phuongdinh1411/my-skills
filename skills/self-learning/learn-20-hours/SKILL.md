---
name: learn-20-hours
description: Create a focused learning plan for any topic using the 80/20 rule, with time estimate based on topic complexity and breadth, and per-session duration based on content weight. Use when the user wants to learn something fast, has limited time, wants a study plan, or says "teach me X efficiently".
---

# Focused Learning Plan

Build a focused, practical learning plan using the 80/20 principle.
Total time, session count, and per-session duration are all estimated based on the topic — nothing is fixed.

## Step 1 — Estimate Before Planning

Before building the session plan, always assess the topic first:

```
Before creating the learning plan for [TOPIC], assess it on three dimensions:

1. **Complexity** — How deep is the rabbit hole?
   - Low: one core concept, predictable patterns (e.g. "git basics", "CSS flexbox")
   - Medium: several interconnected concepts (e.g. "asyncio in Python", "REST API design")
   - High: broad theory + practice (e.g. "machine learning", "system design")

2. **Breadth** — How wide is the topic?
   - Narrow: one focused area (e.g. "Python list comprehensions")
   - Moderate: a tool or library with multiple features (e.g. "React hooks")
   - Wide: a full discipline or domain (e.g. "data engineering", "DevOps")

3. **Prior knowledge required** — Can a beginner start directly?
   - None: no prerequisites
   - Some: requires basic programming or domain knowledge
   - Significant: requires mastery of prerequisite topics first

Based on this assessment, recommend a total time estimate:

| Complexity + Breadth | Estimated Hours | Sessions |
|----------------------|-----------------|----------|
| Low + Narrow         | 4–6 hrs         | 3–4 sessions |
| Low + Moderate       | 8–12 hrs        | 5–6 sessions |
| Medium + Moderate    | 14–20 hrs       | 7–10 sessions |
| Medium + Wide        | 20–30 hrs       | 10–15 sessions |
| High + Wide          | 30–40 hrs       | 15–20 sessions |

Show the assessment and time estimate **before** the session plan, like this:

---
📊 **Topic Assessment: [TOPIC]**
- Complexity: [Low / Medium / High] — reason
- Breadth: [Narrow / Moderate / Wide] — reason
- Prerequisites: [None / Some / Significant] — what they are
- ⏱ Estimated total: **X–Y hours** across [N] sessions
---

Then ask: "Ready to see the full plan?"
```

## Step 2 — Build the Session Plan

Once the estimate is confirmed, build the plan:

```
I want to learn [TOPIC] in approximately [ESTIMATED TIME].

Act like an expert teacher and learning strategist.
Your job is to help me learn the most useful parts first, not everything.

Please do the following:

1. Identify the 20% of concepts, skills, or principles that will give me 80% of the real-world results.
2. Explain why these core areas matter and how they connect to practical use.
3. Create a [N]-session learning plan. For each session:

   a. Estimate the session duration based on its content weight:
      - 1 hr  — concept-only session, reading or watching, light mental load
      - 1.5 hr — concept + small exercise, moderate focus required
      - 2 hrs  — concept + hands-on coding or project work
      - 3 hrs  — heavy practice session, building something substantial
      - 4 hrs  — deep project session, integration of multiple concepts

      Do NOT default every session to 2 hours. Let the content decide.

   b. For every session include:
      - ⏱ Session duration estimate and why
      - Main learning goal
      - Key concepts to study
      - One practical exercise or mini-project (scaled to the session length)
      - One recommended resource (preferably free or beginner-friendly)
      - Expected outcome after completing the session
      - 5 review questions to test understanding

4. After all sessions, show a **time summary table**:

   | Session | Topic | Duration |
   |---------|-------|----------|
   | 1 | ... | 1.5 hrs |
   | 2 | ... | 2 hrs |
   | ... | ... | ... |
   | **Total** | | **X hrs** |

5. Suggest one final capstone project that proves real-world readiness.

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

- Start with the topic assessment + time estimate box
- Wait for user confirmation before generating the full plan
- Show the 80/20 core — highest-leverage concepts
- Then all sessions in order, each with its own duration estimate
- End with the time summary table
- End with the capstone project
