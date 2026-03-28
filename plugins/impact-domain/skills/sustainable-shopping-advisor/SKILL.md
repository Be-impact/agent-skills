---
name: sustainable-shopping-advisor
description: >-
  Helps agents evaluate products and brands through a sustainability and impact lens
  when browsing the web for shopping decisions. Use when comparing products, assessing
  a potential purchase, or researching whether a brand aligns with ethical, environmental,
  and social impact values. Triggers on requests like "should I buy this?", "is this brand
  sustainable?", "compare these products on impact", or "help me shop more sustainably".
license: MIT
metadata:
  author: beimpact
  version: "1.0"
---

# Sustainable Shopping Advisor

## Purpose

When a user is considering a purchase, this skill guides the agent to go beyond price and features — and evaluate the **organization behind the product** through an impact lens.

The goal is not to moralize. It's to surface the information that lets people make **informed, values-aligned choices**.

license: MIT
metadata:
  author: beimpact
  version: "1.0"
---

## Step-by-Step Flow

### 1. Identify the brand / manufacturer

- Extract the brand name from the product URL, listing, or user query
- If ambiguous (e.g. a marketplace like Amazon), ask: "Is there a specific brand you'd like me to evaluate?"
- Search for the **parent company** if the brand is a sub-label (e.g. Innocent → Coca-Cola)

### 2. Browse for impact signals

Use web search and web fetch to gather the following. Prioritize official sources, then third-party certifications, then investigative journalism.

**Environmental signals:**
- Carbon footprint / net-zero commitments and progress
- Packaging: recyclable, reusable, reduced plastic?
- Supply chain transparency (where is it made, by whom?)
- Product lifecycle: repairability, durability, end-of-life

**Social signals:**
- Fair wage / living wage commitments
- Labor conditions in supply chain (Tier 1 and beyond)
- Diversity & inclusion leadership data
- Community investment

**Governance & Mission signals:**
- Is the company mission-driven or purely profit-driven?
- Legal structure: B Corp, cooperative, benefit corporation, social enterprise?
- Ownership: family, VC-backed, private equity, publicly traded?
- History of controversies, greenwashing, or lawsuits

### 3. Check for certifications

Look for these labels — they signal third-party verification rather than self-reporting:

| Certification | What it signals |
|---------------|-----------------|
| B Corp | High standards across governance, workers, community, environment |
| Fair Trade | Fair wages + safe conditions for producers |
| Rainforest Alliance | Sustainable farming + biodiversity |
| FSC / PEFC | Responsible forestry |
| GOTS | Organic textile standards incl. social criteria |
| Cradle to Cradle | Circular design + material health |
| 1% for the Planet | 1% of revenue donated to environmental causes |
| EU Ecolabel | EU-verified lower environmental impact |
| Blauer Engel | German eco-label (electronics, furniture, etc.) |

> ⚠️ Self-reported labels ("eco-friendly", "green", "sustainable") without third-party verification are **not certifications**. Flag these as unverified claims.

### 4. Apply the Greenwashing Check

Before presenting results, run a quick greenwash filter:

- Does the company make vague environmental claims without data? (e.g. "we care about the planet")
- Are targets stated without progress disclosure?
- Does their advertising focus on one green product while the rest of the portfolio is not?
- Has the brand been flagged by NGOs, investigative outlets, or regulators (e.g. EU Green Claims Directive)?

Useful sources to check: [Good On You](https://goodonyou.eco), [B Lab Directory](https://www.bcorporation.net/en-us/find-a-b-corp/), [OpenFoodFacts](https://world.openfoodfacts.org), [WikiRate](https://wikirate.org), [CorpWatch](https://corpwatch.org), [Rank a Brand](https://www.rankabrand.org).

### 5. Structure the response

Present findings in a clear, non-judgmental format:

```
## [Brand Name] — Impact Snapshot

**What they make:** [product category]
**Parent company:** [if applicable]
**HQ / origin:** [country]

### ✅ Positive signals
- [bullet]
- [bullet]

### ⚠️ Concerns / unknowns
- [bullet]
- [bullet]

### 🏷️ Certifications
- [list or "None found"]

### 🔍 Greenwashing risk
[Low / Medium / High] — [brief reason]

### 💡 Verdict
[1–2 sentence summary of whether this brand aligns with values-conscious purchasing]

### 🌱 Better alternatives (if applicable)
[Suggest 1–3 alternatives with stronger impact credentials in the same category]
```

license: MIT
metadata:
  author: beimpact
  version: "1.0"
---

## Key Principles

**Be honest, not preachy.** The agent's job is to surface facts, not lecture. Let the user decide.

**Acknowledge unknowns.** Not every brand discloses everything. If data is missing, say so — silence is not a green signal.

**Context matters.** A $5 product from a small local cooperative is different from a $5 product from a multinational. Scale the analysis to what's realistic.

**Systemic > individual.** When appropriate, gently note that systemic change matters more than individual purchasing — but never use this to dismiss the user's question.

**Belgian / European context.** For BE.IMPACT users, prioritize Belgian and EU-based alternatives when suggesting better options. The [Belgian impact ecosystem](https://be-impact.org) is a valuable source.

license: MIT
metadata:
  author: beimpact
  version: "1.0"
---

## Supported product categories

This skill works across all physical product categories. Extra sources per category:

- **Fashion/Textiles:** Good On You, GOTS, Fashion Revolution's Fashion Transparency Index
- **Food/Beverages:** OpenFoodFacts, Rainforest Alliance, Fair Trade, Soil Association
- **Electronics:** EPEAT, iFixit repairability scores, Fairphone as reference benchmark
- **Household/Cleaning:** EU Ecolabel, Leaping Bunny (cruelty-free), EWG Verified
- **Cosmetics/Beauty:** COSMOS Organic, Leaping Bunny, EWG Skin Deep database
- **Furniture/Home:** FSC, Cradle to Cradle, B Corp brands (e.g. Patagonia Home, Humanscale)

license: MIT
metadata:
  author: beimpact
  version: "1.0"
---

## When NOT to use this skill

- Pure price comparison with no sustainability angle
- Digital products / SaaS (use a different assessment framework)
- When the user has already committed to a purchase and just wants usage tips
