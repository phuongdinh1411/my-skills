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

### Installation

To use these skills, copy the desired skill folder into your Claude Code skills directory:

```bash
# Clone this repo
git clone https://github.com/phuongdinh1411/my-skills.git

# Copy a skill to your Claude Code skills directory
cp -r my-skills/skills/algorithm-explainer ~/.claude/skills/
cp -r my-skills/skills/algo-sensei ~/.claude/skills/
cp -r my-skills/skills/python-best-practices ~/.claude/skills/
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
