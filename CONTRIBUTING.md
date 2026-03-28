# Contributing to BE.IMPACT Agent Skills

Thanks for helping build the impact intelligence ecosystem. 🌱

Skills in this repo follow the [agentskills.io](https://agentskills.io) open standard — making them compatible with Claude Code, OpenAI Codex, Cursor, VS Code Copilot, Gemini CLI, and 25+ other AI tools.

---

## How to propose a skill

**Option 1 — Drop an idea in Slack:**
Post in `#ai-public-skills` on the [BE.IMPACT Slack](https://be-impact.org). Lisa (our AI assistant) will draft it and open a PR.

**Option 2 — Open a PR directly:**
1. Fork the repo
2. Create your skill folder in the right plugin (see structure below)
3. Add a `SKILL.md` following the spec
4. Open a PR — we'll review within a few days

---

## Repo structure

```
agent-skills/
├── plugins/
│   ├── impact-domain/
│   │   ├── README.md
│   │   └── skills/
│   │       └── my-new-skill/
│   │           └── SKILL.md
│   ├── ecosystem-intelligence/
│   │   └── skills/
│   └── beimpact-workflows/
│       └── skills/
├── skills/           ← legacy flat structure (still supported)
├── .claude-plugin/
│   └── marketplace.json
├── install.sh
├── CHANGELOG.md
└── README.md
```

New skills go in `plugins/<category>/skills/<skill-name>/SKILL.md`.

---

## SKILL.md format

Follow the [agentskills.io specification](https://agentskills.io/specification). Minimum required:

```yaml
---
name: my-skill-name        # must match folder name, lowercase + hyphens only
description: >-
  What this skill does and when to use it. Be specific — this is what
  agents read to decide whether to activate the skill. Include keywords.
license: MIT
metadata:
  author: your-name
  version: "1.0"
---

# Skill Title

Instructions for the agent...
```

**Name rules (from spec):**
- Lowercase letters, numbers, and hyphens only
- Must match the parent directory name exactly
- Max 64 characters, no consecutive hyphens, no leading/trailing hyphens

---

## Quality checklist

Before opening a PR, check:

- [ ] `name` matches the directory name exactly
- [ ] `description` is 1–1024 characters and explains *what* + *when*
- [ ] `license: MIT` included
- [ ] Skill body is under 500 lines (move reference material to `references/`)
- [ ] Tested: paste the raw URL into Claude or ChatGPT and verify it works
- [ ] No hallucinated facts, speculative claims, or outdated info
- [ ] Greenwashing / impact-washing? The skill should actively guard against it

---

## Choosing the right plugin

| Category | Use for |
|----------|---------|
| `impact-domain` | Impact frameworks, SDGs, B Corp, mission, theory of change, sustainability |
| `ecosystem-intelligence` | Belgian/European ecosystem, funding landscape, investor matching |
| `beimpact-workflows` | BE.IMPACT-specific tools: matchmaking, scoring, outreach |

Not sure? Drop it in `#ai-public-skills` and we'll figure it out together.

---

## Testing your skill

Easiest test: copy the raw GitHub URL and paste into Claude or ChatGPT:

> "Please read this skill and follow its instructions: https://raw.githubusercontent.com/Be-impact/agent-skills/main/plugins/impact-domain/skills/my-skill/SKILL.md"

You can also validate with the [agentskills reference library](https://github.com/agentskills/agentskills/tree/main/skills-ref):

```bash
npx skills-ref validate ./plugins/impact-domain/skills/my-skill
```

---

## License

By contributing, you agree your skill will be published under [MIT License](LICENSE).
