# BE.IMPACT Agent Skills

Reusable AI agent skills for the impact ecosystem — built and maintained by [BE.IMPACT](https://be-impact.org).

These skills teach AI agents (Claude, GPT, Gemini, and others via OpenClaw) to reason about impact, understand the Belgian ecosystem, and execute BE.IMPACT workflows.

## What are agent skills?

A skill is a folder containing a `SKILL.md` file — a plain-text instruction set that agents load at runtime. Think of it like a plugin: install a skill and your agent instantly understands how to do something new.

Compatible with [OpenClaw](https://openclaw.ai) and the [ClawHub registry](https://clawhub.com).

## Skill categories

```
skills/
├── impact-domain/          ← SDGs, B Corp, mission scoring, impact terminology
│   ├── sdg-alignment/
│   ├── bcorp-assessment/
│   └── mission-authenticity/
├── ecosystem-intelligence/ ← Belgian impact landscape, actors, funding landscape
│   ├── belgian-ecosystem/
│   ├── funding-landscape/
│   └── investor-matching/
└── beimpact-workflows/     ← BE.IMPACT-specific tools (matchmaking, outreach, onboarding)
    ├── matchmaking/
    ├── funding-roadmap/
    └── impact-scoring/
```

## Installing a skill

**Via ClawHub (recommended):**
```bash
npx clawhub install beimpact/sdg-alignment
```

**Manually:**
Copy the skill folder into `~/.openclaw/workspace/skills/` or your OpenClaw workspace skills directory.

## Contributing

Skills are maintained in this repo. To propose a new skill or improve an existing one:

1. Fork the repo
2. Create a folder under the appropriate category
3. Add a `SKILL.md` with YAML frontmatter (`name`, `description`) and instructions
4. Open a PR — we review in `#ai-public-skills` on the BE.IMPACT Slack

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
---

# Skill Title

Instructions for the agent...
```

## License

MIT — free to use, adapt, and build on. Attribution appreciated.

---

Made with 🌱 by [BE.IMPACT](https://be-impact.org)
