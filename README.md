# My Claude Code Skills

A collection of custom skills and a reference to external plugins I use with [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

## Custom Skills

These are skills I created or customized. They live in the `skills/` directory.

### algo-sensei

DSA & LeetCode mentor with multiple modes (tutor, hints, code review, mock interview, pattern mapper). Automatically adapts to your learning style and request type.

```
skills/algo-sensei/
```

### algorithm-explainer

Comprehensive algorithm explainer that builds genuine understanding through analogies, visual walkthroughs, complexity analysis, and working code. Covers sorting, searching, graph, dynamic programming, greedy, and more.

```
skills/algorithm-explainer/
```

### python-best-practices

Modern Python development patterns and best practices including core standards and pytest testing conventions.

```
skills/python-best-practices/
```

### cheat-sheet

Creates a one-page scannable reference card for any topic — definitions, key concepts, examples, common mistakes, and 5 rapid-fire questions.

```
skills/cheat-sheet/
```

### learning-ladder

Breaks any topic into 5 progressive levels (Complete Beginner → Confident Practitioner), each with milestones, exercises, common mistakes, and self-check questions.

```
skills/learning-ladder/
```

### learn-20-hours

80/20 focused study plan — 10 sessions × 2 hours each, targeting the 20% of knowledge that gives 80% of real-world results. Ends with a capstone project.

```
skills/learn-20-hours/
```

### find-signal

Curates the 5 highest-quality learning resources for any topic, ranked in the best order to use them, plus a ready-made 7-day learning path.

```
skills/find-signal/
```

### feynman-loop

Teaches any topic using the Feynman technique — explains simply, asks you to explain it back, identifies gaps, re-teaches only what's missing. Repeats until understanding is clean and complete.

```
skills/feynman-loop/
```

### quiz-me

Runs an adaptive active-recall quiz — 10 progressive questions (beginner → expert), grades each answer, identifies exact gaps, and gives a final score with a revision plan.

```
skills/quiz-me/
```

### deep-learn

Orchestrates the full 6-step self-learning flow in sequence: Find Signal → Learning Ladder → Learn in 20 Hours → Feynman Loop → Quiz Me → Cheat Sheet. Each step is saved to `/tmp/deep-learn-<topic>/step-N-<name>.md`.

```
skills/deep-learn/
```

---

## Installation

### Claude Code skills

```bash
curl -fsSL https://raw.githubusercontent.com/phuongdinh1411/my-skills/main/install.sh | bash -s -- --claude-code
```

Installs `algo-sensei`, `algorithm-explainer`, and `python-best-practices` into `~/.claude/skills/`.

### pi self-learning skills

```bash
# Option A — pi package manager (recommended)
pi install git:github.com/phuongdinh1411/my-skills

# Option B — install script
curl -fsSL https://raw.githubusercontent.com/phuongdinh1411/my-skills/main/install.sh | bash -s -- --pi
```

Installs all 7 self-learning skills into `~/.agents/skills/`.

### Install everything

```bash
curl -fsSL https://raw.githubusercontent.com/phuongdinh1411/my-skills/main/install.sh | bash -s -- --all
```

### Install a single skill

```bash
# One Claude Code skill
curl -fsSL https://raw.githubusercontent.com/phuongdinh1411/my-skills/main/install.sh | bash -s -- --claude-code algo-sensei

# One pi skill
curl -fsSL https://raw.githubusercontent.com/phuongdinh1411/my-skills/main/install.sh | bash -s -- --pi deep-learn
```

---

## External Plugins

These are third-party plugins installed via Claude Code's `/plugin` command.

### superpowers

Core skills library: TDD, systematic debugging, brainstorming, code review, git worktrees, and collaboration patterns.

- **Author**: Jesse Vincent
- **Repository**: https://github.com/obra/superpowers
- **License**: MIT

```
/plugin install superpowers@claude-plugin-directory
```

### developer-kit

Comprehensive toolkit for Java/Spring Boot, TypeScript/NestJS, React, AWS, LangChain4j, and more. Includes 80+ skills covering CRUD patterns, security reviews, testing, refactoring, prompt engineering, and RAG.

- **Author**: Giuseppe Trisciuoglio
- **Repository**: https://github.com/giuseppe-trisciuoglio/developer-kit

```
/plugin install developer-kit@giuseppe-trisciuoglio
```

### skill-creator

Create new skills, improve existing skills, and measure skill performance with evaluation loops and benchmarking.

- **Author**: Anthropic
- **Repository**: https://github.com/anthropics/claude-plugins-official/tree/main/plugins/skill-creator

```
/plugin install skill-creator@claude-plugins-official
```

### playwright

Browser automation and end-to-end testing MCP server by Microsoft. Enables Claude to interact with web pages, take screenshots, fill forms, and perform automated browser testing.

- **Author**: Microsoft
- **Repository**: https://github.com/anthropics/claude-plugins-official/tree/main/plugins/playwright

```
/plugin install playwright@claude-plugins-official
```

### sap-cap-capire

SAP Cloud Application Programming Model (CAP) development skill using Capire documentation. Covers CDS modeling, Node.js/Java runtimes, HANA/SQLite/PostgreSQL, deployment to SAP BTP, Fiori UIs, authorization, and multitenancy.

- **Author**: E.J.
- **Repository**: https://github.com/secondsky/sap-skills
- **License**: GPL-3.0

```
/plugin install sap-cap-capire@sap-skills
```

### LSP Plugins (Language Servers)

Language Server Protocol integrations for code intelligence:

```
/plugin install clangd-lsp@claude-plugins-official
/plugin install pyright-lsp@claude-plugins-official
/plugin install typescript-lsp@claude-plugins-official
```
