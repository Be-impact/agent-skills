# Changelog

All notable changes to BE.IMPACT Agent Skills are documented here.

Format: [Semantic Versioning](https://semver.org). Changes grouped by plugin.

---

## [1.3.0] — 2026-03-28

### Added
- **`sustainable-shopping-advisor`** (impact-domain) — Evaluate products and brands through a sustainability and impact lens. Checks certifications, flags greenwashing, suggests better alternatives.
- **Plugin structure** — Skills reorganized into installable plugins under `plugins/` following the [agentskills.io](https://agentskills.io) spec.
- **`install.sh`** — Shell installer with support for all skills-compatible agents (OpenClaw, Claude Code, Codex). Supports install, update, uninstall, list, verify.
- **`.claude-plugin/marketplace.json`** — Claude Code plugin marketplace manifest. Enables `claude plugin marketplace add Be-impact/agent-skills`.
- **CONTRIBUTING.md** — Contribution guidelines including skill quality checklist.

### Changed
- `bcorp-assessment` frontmatter: fixed `name` field to match directory name (spec compliance).
- README: added URL-paste install method, full skills table, publishing roadmap.

---

## [1.2.0] — 2026-03-28

### Added
- **`impact-classifier`** (impact-domain) — Classify organizations by impact tier across 5 dimensions.
- **`impact-scaling-strategy`** (impact-domain) — Guide orgs through scaling strategy selection (deep/up/out/down).
- **`theory-of-change-builder`** (impact-domain) — Build a full Theory of Change from inputs to long-term impact.
- **`applying-doughnut-economics-for-sustainable-development`** (impact-domain) — Apply Doughnut Economics to policy and business decisions.

---

## [1.1.0] — 2026-03-20

### Added
- **`belgian-funding-navigator`** (ecosystem-intelligence) — Navigate Belgian impact funding landscape.
- **`impact-mission-validator`** (impact-domain) — Validate and strengthen mission statements.

---

## [1.0.0] — 2026-03-15

### Added
- Initial repo structure with `skills/impact-domain/`, `skills/ecosystem-intelligence/`, `skills/beimpact-workflows/`.
- **`bcorp-assessment`** (impact-domain) — B Corp certification guidance.
- README, IDEAS.md, MIT license.
