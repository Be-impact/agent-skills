# Skill Ideas & Inspiration

This file tracks ideas for future skills — concepts worth building, UX patterns worth borrowing, and strategic opportunities for the BE.IMPACT ecosystem.

---

## 🧠 Backlog

### Brainstorm Studio
An AI mode where you describe what you're looking for in natural language and it asks clarifying questions to refine the match. Conversational discovery — no forms, no dropdowns. This is exactly the conversational entry point described in the BE.IMPACT ecosystem vision deck.

**Notes:** Someone has already built a version of this. We should study how they structured the clarifying question loop and what signals trigger a "good enough" match refinement.

**Relevant skill category:** `beimpact-workflows/` or `ecosystem-intelligence/`

**Why it matters:** Lowers the barrier to entry for new users who don't know the right taxonomy. Aligns with the "Discover" job in the Impact Discovery Engine vision.

---

### Match Analysis per Organisation
A dedicated view that breaks down *why* a specific org is a match — scoring the fit across multiple dimensions and explaining the reasoning. This is the "dual scoring" feature spec'd for the AI co-pilot but surfaced more visibly to the user.

**Notes:** The UX pattern here is worth borrowing — don't just show a match score, show the reasoning. Builds trust and helps orgs understand how to improve their fit.

**Relevant skill category:** `beimpact-workflows/matchmaking/`

**Why it matters:** Differentiates BE.IMPACT's matchmaking from simple keyword search. Creates a feedback loop for orgs to improve their profiles.

---

### Theory-of-Change Validator / Generator
`/theory-of-change` as a first-class org profile field. Helps organizations articulate their theory of change (inputs → activities → outputs → outcomes → impact) in a structured, verifiable way.

**Notes:** Most directories use self-reported data. BE.IMPACT could verify and structure this with AI — making it a genuine differentiator. Ties directly into the impact authenticity and SDG alignment work.

**Relevant skill category:** `impact-domain/`

**Why it matters:** Signals mission depth. Investors and accelerators increasingly require a clear theory of change. Differentiates BE.IMPACT profiles from generic directories.

---

## ✅ Built

| Skill | Category | Status |
|-------|----------|--------|
| `belgian-funding-navigator` | `ecosystem-intelligence/` | ✅ Live |
| `impact-mission-validator` | `impact-domain/` | ✅ Live |
| `sustainable-shopping-advisor` | `impact-domain/` | ✅ Live |

---

## 💡 How to propose a skill

Drop an idea in `#ai-public-skills` on Slack. Lisa will add it here and flag if it's a good fit for the public library vs. an internal BE.IMPACT workflow skill.
