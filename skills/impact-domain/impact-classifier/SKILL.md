---
name: impact-classifier
description: >
  Classify whether an organisation qualifies as a genuine impact organisation, and at
  what tier. Use when evaluating orgs for ecosystem inclusion, partner vetting, investor
  screening, or impact-first procurement. Scores 5 dimensions (intentionality,
  materiality, measurement, sector, governance) and assigns a tier from Impact Leader
  to Not Impact.
source: BE.IMPACT Impact Classification Framework
source_url: https://be-impact.org/impact-framework
license: MIT
---

# Impact Classifier

## Overview

This skill scores organisations on a 5-dimension, 0–20 point framework to determine
whether they qualify as genuine impact organisations — and at what level.

Built to distinguish:
- **Genuine impact organisations** — mission-driven, measuring outcomes, structurally committed
- **CSR companies** — do good things, but impact is peripheral
- **Impact-washing** — green/social claims without substance
- **Traditional businesses** — no meaningful impact component

The scoring is designed to be **automatable from public data** (website, LinkedIn, reports,
certifications) — no self-assessment required.

---

## The Five Dimensions

Each dimension is scored **0–4**. Total score: 0–20.

---

### 1. INTENTIONALITY (0–4)
*Is positive impact the core reason this organisation exists?*

| Score | Signal |
|---|---|
| 0 | No impact language; purely commercial mission statement |
| 1 | Generic CSR/sustainability language; impact is an add-on |
| 2 | Impact mentioned as a core value; some mission alignment |
| 3 | Mission statement explicitly centers social/environmental impact; clear theory of change |
| 4 | Impact legally embedded (B Corp, VZW, cooperative) OR mission statement is impact-first with SDG/target linkage |

**Data sources:** Mission statement, About page, LinkedIn summary, founding story

---

### 2. MATERIALITY (0–4)
*Is impact central to the business model or a side project?*

| Score | Signal |
|---|---|
| 0 | Core product/service has no positive impact thesis |
| 1 | Separate CSR programme; impact not in core offering |
| 2 | Impact is part of some products/services but not majority of revenue |
| 3 | Core product/service directly creates social/environmental value |
| 4 | Business model *only works* if impact is created (impact = value proposition) |

**Data sources:** Product/service descriptions, revenue model, what they actually sell

---

### 3. MEASUREMENT & EVIDENCE (0–4)
*Can they prove their impact?*

| Score | Signal |
|---|---|
| 0 | No impact data mentioned anywhere |
| 1 | Vague qualitative claims ("we help people", "we care for the planet") |
| 2 | Some metrics cited (e.g., "10,000 users") but no outcome evidence |
| 3 | Outcome metrics published (e.g., "reduced carbon by X%", "X% of users report improvement") |
| 4 | Third-party verified (impact report, B Corp score, audit, SROI study, academic validation) |

**Data sources:** Impact reports, metrics pages, press releases, B Corp profile, sustainability reports

---

### 4. SECTOR ALIGNMENT (0–4)
*Does the organisation operate in a sector with inherent positive impact potential?*

| Score | Sector Category |
|---|---|
| 0 | Sectors with known harm (fossil fuels, weapons, gambling, tobacco, fast fashion) |
| 1 | Neutral sectors with no impact thesis |
| 2 | Sectors with indirect impact potential (education tech, healthcare support, logistics optimisation) |
| 3 | Core impact sectors (clean energy, mental health, affordable housing, food systems, circular economy) |
| 4 | Critical impact infrastructure (financial inclusion, refugee support, climate adaptation, biodiversity) |

**Data sources:** Industry classification, sector tags, LinkedIn industry field

---

### 5. GOVERNANCE & ACCOUNTABILITY (0–4)
*Is the organisation structured to protect and advance its mission long-term?*

| Score | Signal |
|---|---|
| 0 | No governance signals; typical private for-profit |
| 1 | Board exists but no impact oversight |
| 2 | ESG policy, sustainability committee, or CSR report |
| 3 | Stakeholder governance (employees, community in decision-making) or impact KPIs in management |
| 4 | Legal protection of mission (B Corp, VZW, cooperative, benefit corporation) OR public benefit charter |

**Data sources:** Legal form, governance page, board composition, certifications

---

## Tier Assignment

| Tier | Score | Label | Meaning |
|---|---|---|---|
| 🥇 Tier 1 | 16–20 | **Impact Leader** | Mission-embedded, measuring outcomes, structurally committed |
| 🥈 Tier 2 | 11–15 | **Impact Active** | Clear intent, impact sectors, some evidence |
| 🥉 Tier 3 | 7–10 | **Impact Aligned** | Real but peripheral or unproven impact |
| ⚪ Tier 4 | 3–6 | **Impact Curious** | Some sustainability signals, not impact-first |
| ❌ Tier 5 | 0–2 | **Not Impact** | No credible impact thesis |

---

## Hard Disqualifiers (Automatic Tier 5)

Regardless of score, classify as **Not Impact** if:
- Primary revenue from fossil fuel extraction, coal, or oil & gas
- Primary revenue from weapons manufacturing or defense contracting
- Primary revenue from gambling or predatory lending
- Active ESG controversy / greenwashing ruling by a regulator
- Revenue model that structurally harms target beneficiaries

---

## Belgian / EU Legal Form Boosts

| Legal Form | Impact Signal | Dimension Boost |
|---|---|---|
| VZW (non-profit) | Mission-over-profit legally required | +1 Intentionality |
| Cooperative (CV) | Stakeholder governance | +1 Governance |
| Vennootschap met sociaal oogmerk (VSO) | Social purpose charter | +2 Intentionality, +1 Governance |
| B Corp certified | Externally verified | +1 to each dimension (cap at 4) |
| EU Social Economy label | Recognised social economy actor | +1 Governance |

---

## How to Classify an Organisation

### Step 1: Gather public data
Collect: website About page, mission statement, LinkedIn company profile, product/service
descriptions, any available impact reports or certifications.

### Step 2: Check hard disqualifiers first
If any hard disqualifier applies → Tier 5. Stop here.

### Step 3: Score each dimension (0–4)
Write a 1-sentence rationale for each score.

### Step 4: Apply Belgian/EU legal boosts if applicable

### Step 5: Sum scores → assign tier

### Step 6: Flag confidence level
- **HIGH** — Strong public signals, multiple sources confirm each dimension
- **MEDIUM** — Some gaps, 1–2 dimensions scored from limited data
- **LOW** — Insufficient public data; score is approximate

---

## Output Format

Always present the classification in this structured format:

```
IMPACT CLASSIFICATION — [Organisation Name]

Tier: [🥇/🥈/🥉/⚪/❌] [Label]
Score: [X]/20
Confidence: [HIGH / MEDIUM / LOW]

Dimension Scores:
  Intentionality:         [0–4] — [rationale]
  Materiality:            [0–4] — [rationale]
  Measurement & Evidence: [0–4] — [rationale]
  Sector Alignment:       [0–4] — [rationale]
  Governance:             [0–4] — [rationale]

SDG Alignment: [list or "None identified"]
Certifications: [list or "None"]
Hard Disqualified: [Yes/No]

Summary:
[2–3 sentences explaining the classification and what it means for engagement.]
```

---

## Structured JSON Output (for system integration)

When integrating with Supabase or other data systems, output:

```json
{
  "org_name": "...",
  "classification_tier": 2,
  "classification_label": "Impact Active",
  "confidence": "HIGH",
  "scores": {
    "intentionality": 3,
    "materiality": 3,
    "measurement_evidence": 2,
    "sector_alignment": 3,
    "governance_accountability": 2
  },
  "rationale": {
    "intentionality": "...",
    "materiality": "...",
    "measurement_evidence": "...",
    "sector_alignment": "...",
    "governance_accountability": "..."
  },
  "sdg_alignment": ["SDG 3"],
  "certifications": [],
  "disqualified": false,
  "reviewed_at": "YYYY-MM-DD"
}
```

---

## Calibration Examples

| Organisation | I | M | E | S | G | Total | Tier |
|---|---|---|---|---|---|---|---|
| Tony's Chocolonely | 4 | 4 | 3 | 2 | 3 | 16 | 🥇 Impact Leader |
| Patagonia | 4 | 4 | 4 | 3 | 4 | 19 | 🥇 Impact Leader |
| BloomUp (mental health) | 3 | 4 | 2 | 3 | 1 | 13 | 🥈 Impact Active |
| Tesla | 2 | 3 | 2 | 3 | 1 | 11 | 🥈 Impact Active |
| Proximus (with ESG report) | 1 | 1 | 2 | 1 | 2 | 7 | 🥉 Impact Aligned |
| Generic BV with CSR page | 1 | 1 | 1 | 1 | 1 | 5 | ⚪ Impact Curious |
| Exxon | 0 | 0 | 0 | 0 | 0 | 0 | ❌ Not Impact |

---

## Key Principles

- **Automatable from public data.** Never require self-assessment. If data isn't public,
  flag LOW confidence — don't inflate scores.
- **Tiered, not binary.** The goal is to capture the spectrum of impact, not gatekeep.
- **Belgian context matters.** Legal form (VZW, cooperative) is a meaningful signal in
  the Belgian ecosystem.
- **Scores are hypotheses.** A classification is a starting point for conversation,
  not a verdict. Orgs can provide additional evidence to update their score.
- **Recalibrate over time.** An org's tier should be reviewed at least annually, or
  when significant new data becomes available.

---

## References

- BE.IMPACT Impact Classification Framework: https://be-impact.org/impact-framework
- B Lab / B Corp: https://www.bcorporation.net
- Impact Management Project (IMP): https://impactmanagementproject.com
- GIIN IRIS+: https://iris.thegiin.org
- EU Taxonomy: https://finance.ec.europa.eu/sustainable-finance/tools-and-standards/eu-taxonomy_en
- EVPA Impact Spectrum: https://evpa.eu.com
