# Impact Domain Plugin

Skills for reasoning about impact — SDGs, B Corp, mission authenticity, theory of change, impact classification, scaling strategies, and sustainable consumption.

## Install

```bash
# Via Claude Code plugin marketplace
claude plugin marketplace add Be-impact/agent-skills
claude plugin install impact-domain@beimpact

# Via install script
./install.sh impact-domain

# Via ClawHub
npx clawhub install beimpact/impact-domain
```

## Skills included

| Skill | Description |
|-------|-------------|
| `bcorp-assessment` | Guide organizations through B Corp certification — BIA scoring, gap analysis, improvements |
| `impact-mission-validator` | Validate and strengthen mission statements — greenwashing check, SDG alignment, investor credibility |
| `impact-classifier` | Classify organizations by impact tier across 5 dimensions |
| `impact-scaling-strategy` | Choose the right scaling strategy (deep/up/out/down) for social innovation |
| `theory-of-change-builder` | Build a Theory of Change from problem definition to long-term impact vision |
| `applying-doughnut-economics-for-sustainable-development` | Apply Doughnut Economics to policy and business strategy |
| `sustainable-shopping-advisor` | Evaluate products and brands through a sustainability and impact lens |

## Paste into any AI (no install needed)

Copy the raw URL of any `SKILL.md` and say:
> "Please read this skill and follow its instructions: [URL]"

Raw URLs: `https://raw.githubusercontent.com/Be-impact/agent-skills/main/plugins/impact-domain/skills/<skill-name>/SKILL.md`
