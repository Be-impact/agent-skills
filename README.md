# BE.IMPACT Agent Skills

Reusable AI agent skills for the impact ecosystem — built and maintained by [BE.IMPACT](https://be-impact.org).

These skills teach AI agents (Claude, GPT, Gemini, and others via OpenClaw) to reason about impact, understand the Belgian ecosystem, and execute BE.IMPACT workflows.

## What are agent skills?

A skill is a folder containing a `SKILL.md` file — a plain-text instruction set that agents load at runtime. Think of it like a plugin: install a skill and your agent instantly understands how to do something new.

---

## ✨ Quickest way to use a skill — paste the URL

You don't need to install anything. Just paste the raw URL of any `SKILL.md` file into your AI assistant and say:

> **"Please read this skill file and follow its instructions: [URL]"**

**Example:**

> "Please read this skill file and follow its instructions:
> https://raw.githubusercontent.com/Be-impact/agent-skills/main/skills/impact-domain/sustainable-shopping-advisor/SKILL.md"

This works with **Claude**, **ChatGPT**, **Gemini**, and any AI assistant that can read URLs. No installs, no config — just paste and go.

To find the raw URL for any skill: open the `SKILL.md` file on GitHub → click **Raw** → copy that URL.

---

## Installing a skill in OpenClaw

If you use [OpenClaw](https://openclaw.ai), you can install skills permanently so they're always available to your agent.

**Option 1 — Via ClawHub CLI (coming soon):**
```bash
npx clawhub install beimpact/sustainable-shopping-advisor
```

**Option 2 — Manual install:**
```bash
# Clone the repo
git clone https://github.com/Be-impact/agent-skills

# Copy the skill you want into your OpenClaw skills directory
cp -r agent-skills/skills/impact-domain/sustainable-shopping-advisor \
  ~/.openclaw/workspace/skills/
```

Once installed, OpenClaw will automatically load the skill when relevant.

---

## Skills in this library

### 🌍 `impact-domain/` — Impact reasoning & frameworks

| Skill | Description |
|-------|-------------|
| [`bcorp-assessment`](skills/impact-domain/bcorp-assessment/) | Guide organizations through B Corp certification requirements |
| [`impact-mission-validator`](skills/impact-domain/impact-mission-validator/) | Validate whether an organization's mission is authentic and measurable |
| [`impact-classifier`](skills/impact-domain/impact-classifier/) | Classify organizations and activities by impact type and SDG alignment |
| [`impact-scaling-strategy`](skills/impact-domain/impact-scaling-strategy/) | Build strategies for scaling impact alongside revenue |
| [`theory-of-change-builder`](skills/impact-domain/theory-of-change-builder/) | Structure an organization's theory of change (inputs → outcomes → impact) |
| [`applying-doughnut-economics`](skills/impact-domain/applying-doughnut-economics-for-sustainable-development/) | Apply Doughnut Economics principles to business and policy decisions |
| [`sustainable-shopping-advisor`](skills/impact-domain/sustainable-shopping-advisor/) | Evaluate products and brands through a sustainability and impact lens |

### 🇧🇪 `ecosystem-intelligence/` — Belgian & European impact ecosystem

| Skill | Description |
|-------|-------------|
| [`belgian-funding-navigator`](skills/ecosystem-intelligence/belgian-funding-navigator/) | Navigate Belgian and European funding options for impact organizations |

### ⚙️ `beimpact-workflows/` — BE.IMPACT operational workflows

*Coming soon*

---

## Skill categories

```
skills/
├── impact-domain/          ← SDGs, B Corp, mission scoring, impact terminology
├── ecosystem-intelligence/ ← Belgian ecosystem, funding landscape, investor matching
└── beimpact-workflows/     ← BE.IMPACT-specific workflows (matchmaking, scoring, outreach)
```

---

## Contributing

Skills are maintained in this repo. To propose a new skill or improve an existing one:

1. Fork the repo
2. Create a folder under the appropriate category
3. Add a `SKILL.md` with YAML frontmatter (`name`, `description`) and instructions
4. Open a PR — we review in `#ai-public-skills` on the [BE.IMPACT Slack](https://be-impact.org)

Or drop your idea in `#ai-public-skills` and we'll draft it for you.

## Skill format

Each skill folder contains at minimum:

```
my-skill/
└── SKILL.md
```

```yaml
---
name: my-skill
description: >
  One or two sentences describing when this skill should be used.
  This is what the agent reads to decide whether to load the skill.
---

# Skill Title

Instructions for the agent...
```

---

## Publishing roadmap

| Phase | What | Status |
|-------|------|--------|
| **Now** | Public GitHub repo — paste raw URL to use any skill | ✅ Live |
| **Soon** | ClawHub registry — `clawhub install beimpact/<skill>` | 🔜 Planned |
| **Later** | MCP wrapper — use skills as tools in Claude.ai Projects | 💡 Exploring |

---

## License

MIT — free to use, adapt, and build on. Attribution appreciated.

---

Made with 🌱 by [BE.IMPACT](https://be-impact.org)
