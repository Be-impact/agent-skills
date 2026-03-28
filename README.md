# BE.IMPACT Agent Skills

Reusable AI agent skills for the impact ecosystem — built and maintained by [BE.IMPACT](https://be-impact.org).

These skills teach AI agents to reason about impact, navigate the Belgian ecosystem, and run BE.IMPACT workflows. They follow the [agentskills.io](https://agentskills.io) open standard — compatible with Claude Code, OpenAI Codex, Cursor, VS Code Copilot, Gemini CLI, and 25+ other AI tools.

[![agentskills.io spec](https://img.shields.io/badge/agentskills.io-spec-lightgrey)](https://agentskills.io/specification)
[![Claude Code plugin](https://img.shields.io/badge/Claude%20Code-plugin-blueviolet)](https://code.claude.com/docs/en/skills)
[![Codex compatible](https://img.shields.io/badge/Codex-compatible-orange)](https://developers.openai.com/codex/skills/)
[![MIT License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.3.0-green)](CHANGELOG.md)

---

## ✨ Quickest way — paste a URL into any AI

No install needed. Copy any skill's raw URL and say:

> **"Please read this skill and follow its instructions: [URL]"**

Works with Claude, ChatGPT, Gemini — anything that can read a URL.

**Example:**
```
Please read this skill and follow its instructions:
https://raw.githubusercontent.com/Be-impact/agent-skills/main/plugins/impact-domain/skills/sustainable-shopping-advisor/SKILL.md
```

---

## Install via Claude Code plugin marketplace

```bash
# Add the BE.IMPACT marketplace (once)
claude plugin marketplace add Be-impact/agent-skills

# Install a plugin
claude plugin install impact-domain@beimpact
claude plugin install ecosystem-intelligence@beimpact
```

## Install via script (OpenClaw, Codex, or any agent)

```bash
git clone https://github.com/Be-impact/agent-skills
cd agent-skills

./install.sh                          # Install all plugins
./install.sh impact-domain            # Install one plugin
./install.sh list                     # List available plugins
./install.sh verify                   # Verify installed skills
./install.sh update impact-domain     # Update a plugin
./install.sh uninstall impact-domain  # Remove a plugin
./install.sh --target ~/custom/skills # Custom install path
```

The installer auto-detects your agent (OpenClaw → Codex → Claude Code) and installs to the right location.

## Install via ClawHub

```bash
npx clawhub install beimpact/impact-domain
npx clawhub install beimpact/ecosystem-intelligence
```

---

## Plugins

### 🌍 `impact-domain` — Impact reasoning & frameworks

[→ Plugin README](plugins/impact-domain/README.md)

| Skill | Description | Status |
|-------|-------------|--------|
| [`bcorp-assessment`](plugins/impact-domain/skills/bcorp-assessment/) | Guide organizations through B Corp certification — BIA scoring, gap analysis, improvements | ✅ Stable |
| [`impact-mission-validator`](plugins/impact-domain/skills/impact-mission-validator/) | Validate and strengthen mission statements — greenwashing check, SDG alignment | ✅ Stable |
| [`impact-classifier`](plugins/impact-domain/skills/impact-classifier/) | Classify organizations by impact tier across 5 dimensions | ✅ Stable |
| [`impact-scaling-strategy`](plugins/impact-domain/skills/impact-scaling-strategy/) | Choose the right scaling strategy (deep/up/out/down) for social innovation | ✅ Stable |
| [`theory-of-change-builder`](plugins/impact-domain/skills/theory-of-change-builder/) | Build a Theory of Change from problem definition to long-term impact vision | ✅ Stable |
| [`applying-doughnut-economics-for-sustainable-development`](plugins/impact-domain/skills/applying-doughnut-economics-for-sustainable-development/) | Apply Doughnut Economics to policy and business strategy | ✅ Stable |
| [`sustainable-shopping-advisor`](plugins/impact-domain/skills/sustainable-shopping-advisor/) | Evaluate products and brands through a sustainability and impact lens | ✅ Stable |

### 🇧🇪 `ecosystem-intelligence` — Belgian & European impact ecosystem

[→ Plugin README](plugins/ecosystem-intelligence/README.md)

| Skill | Description | Status |
|-------|-------------|--------|
| [`belgian-funding-navigator`](plugins/ecosystem-intelligence/skills/belgian-funding-navigator/) | Navigate Belgian impact funding — grants, investors, accelerators, EU programs | ✅ Stable |

### ⚙️ `beimpact-workflows` — BE.IMPACT operational workflows

[→ Plugin README](plugins/beimpact-workflows/README.md)

| Skill | Description | Status |
|-------|-------------|--------|
| `matchmaking` | BE.IMPACT matchmaking methodology — compatibility scoring between orgs and investors | 🔜 Planned |
| `impact-scoring` | BE.IMPACT impact scoring framework for orgs and opportunities | 🔜 Planned |
| `funding-roadmap` | Step-by-step funding roadmap from current stage to next milestone | 🔜 Planned |

---

## Skill format

Skills follow the [agentskills.io specification](https://agentskills.io/specification):

```
my-skill/
├── SKILL.md          # Required: YAML frontmatter + instructions
├── references/       # Optional: additional docs loaded on demand
├── scripts/          # Optional: executable code
└── assets/           # Optional: templates, resources
```

```yaml
---
name: my-skill-name         # lowercase + hyphens, must match directory name
description: >-
  What the skill does and when to use it. Include specific keywords.
  Agents read this to decide whether to activate the skill.
license: MIT
metadata:
  author: beimpact
  version: "1.0"
---

# Skill Title

Instructions for the agent...
```

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for full guidelines.

Short version:
1. Fork the repo
2. Add your skill under `plugins/<category>/skills/<skill-name>/SKILL.md`
3. Follow the [agentskills.io spec](https://agentskills.io/specification)
4. Open a PR — or drop an idea in `#ai-public-skills` and we'll draft it

---

## Publishing roadmap

| Method | Status |
|--------|--------|
| GitHub (paste URL into any AI) | ✅ Live |
| Claude Code plugin marketplace (`claude plugin marketplace add`) | ✅ Live |
| Shell installer (`./install.sh`) | ✅ Live |
| ClawHub registry (`npx clawhub install`) | 🔜 Soon |

---

## License

MIT — free to use, adapt, and build on. Attribution appreciated.

See [CHANGELOG.md](CHANGELOG.md) for release history.

---

Made with 🌱 by [BE.IMPACT](https://be-impact.org) · [agentskills.io](https://agentskills.io)
