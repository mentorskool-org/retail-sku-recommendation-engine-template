# Scenario 02 — Understanding CPG Distribution (Hands-On)

**Stack:** Excel  •  **Total time:** ~4h 15m (1h 45m masterclass + 2h 30m hands-on)

## Overview

Apply your understanding of CPG distribution by mapping the journey of a product from factory to consumer, analysing a real field merchandiser's weekly visit data, and investigating why "more SKUs" doesn't always mean "more sales". This scenario bridges domain theory with practical retail operations — and gives you the foundation for every downstream scenario in the cohort.

## Flow

Work through this scenario in two phases:

### Phase 1 — Masterclass (read first)

Read all four scenarios in [`masterclass/`](masterclass/) **in order**. Total: ~1h 45m.

1. **Journey of a Product** — how a product flows from factory to consumer
2. **Decoding a Field Merchandiser's Daily Report** — what data field operations generate
3. **Modern Trade vs General Trade** — why our engine targets small-format chains
4. **Distribution Metrics That Matter** — Numeric Distribution, Weighted Distribution, the ND–WD gap

The masterclass also ships with sample CSV/XLSX data in [`masterclass/sample-data/`](masterclass/sample-data/) — open and explore before moving on.

### Phase 2 — Hands-on tasks (do after the masterclass)

Three tasks in [`tasks/`](tasks/). Total: ~2h 30m.

| # | Task | Produces |
|---|------|----------|
| 1 | Map the Distribution Journey with Margin Analysis | `distribution-journey.xlsx` |
| 2 | Analyze a Sales Rep's Weekly Store Visit Data | `sales-rep-metrics.xlsx` |
| 3 | Why "More SKUs" Doesn't Always Mean "More Sales" | `store-profiling.xlsx` |

Tasks 2 and 3 ship with **starter Excel workbooks** that contain the raw data + exercise templates (yellow cells to fill). Open the starter, do the exercises, then **Save As** the deliverable into this folder. See [`tasks/README.md`](tasks/README.md) for details.

## Pre-requisites

- Excel: basic formulas (`SUMIF`, `COUNTIF`, `SUMIFS`, `COUNTIFS`, `SUMPRODUCT`), charting (scatter + trendline + R²)
- No coding required for this scenario

## Learning Objectives

By the end of this scenario you should be able to:

1. Map the complete distribution journey for a CPG product and explain the margin earned at each node.
2. Calculate productive call rate, average order value, and OOS rate from a field merchandiser's visit log.
3. Profile store characteristics and recommend visit frequencies based on sales potential.
4. Analyse the relationship between SKU count and sales, and calculate Numeric vs Weighted Distribution for individual SKUs.

## Deliverables (commit into this folder)

| File | Built in | Notes |
|------|----------|-------|
| `distribution-journey.xlsx` | Task 1 | Flowcharts (Independent + Chain Retailer) + margin waterfall comparison |
| `sales-rep-metrics.xlsx` | Task 2 | Save the completed starter workbook here |
| `store-profiling.xlsx` | Task 3 | Save the completed starter workbook here |
| `notes.md` | Across all 3 tasks | <300 words — top insights + any assumptions you made |

## Submission Checklist

- [ ] Read all 4 masterclass scenarios
- [ ] All 3 hands-on tasks completed; yellow cells filled in tasks 2 & 3 workbooks
- [ ] 4 deliverables committed at the root of this folder (`02-cpg-distribution/`)
- [ ] Each workbook opens cleanly; formulas (not hard-coded values) used for calculations wherever possible
- [ ] `notes.md` summarises findings in <300 words
- [ ] Branch pushed and PR opened against `main` with mentor tagged

See [`../../docs/SUBMISSION.md`](../../docs/SUBMISSION.md) for the branch/PR workflow.
