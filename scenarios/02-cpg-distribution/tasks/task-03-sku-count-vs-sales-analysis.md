# Task 3: Why "More SKUs" Doesn't Always Mean "More Sales"

## Overview

**Time:** ~55 minutes
**Tool:** Excel
**Skill:** Correlation analysis, scatter plots, SKU productivity, ND vs WD calculation
**Mapped Learning Objectives:**
- Analyze the relationship between SKU count and sales performance across stores
- Calculate Numeric Distribution and Weighted Distribution for key SKUs

---

## The Brief

Your District Sales Manager (DSM) is puzzled:

> "We have a store in downtown Austin stocking 15 snack SKUs from us. A store in the Domain in Austin stocks only 8. But the Domain store outsells downtown by 40%. We have *better* distribution downtown — so why are sales *lower*?"

Your job: analyze data from **20 stores**, find the answer, and present a clear insight.

---

## Dataset: 20 Stores — Snack Category Performance

Open the workbook **[task-03-sku-analysis-workbook.xlsx](task-03-sku-analysis-workbook.xlsx)**. It contains 6 sheets:

| Sheet | Contents |
|-------|----------|
| **store_snack_data** | Raw data — 20 stores with SKU count, sales, units, and avg MSRP |
| **Ex1 - Scatter Plot Data** | SKU count & sales columns pre-arranged for scatter plot + observations box |
| **Ex2 - SKU Productivity** | Sales per SKU column to calculate (yellow) + store type summary template |
| **Ex3 - MSRP & 2x2 Matrix** | MSRP vs sales scatter data + 2x2 quadrant classification table for all 20 stores |
| **Ex4 - ND vs WD** | Full SKU presence matrix (1/0) + ND/WD calculation template with formula hints |
| **Ex5 - DSM Response** | Text area to draft your 2-paragraph response to the DSM |

All yellow-highlighted cells are where you enter your answers. Formula hints are provided on each sheet.

### Raw Data Preview (store_snack_data sheet)

| Store ID | Store Name | Location | Store Type | Frito-Lay SKUs Stocked | Monthly Snack Sales ($) | Monthly Snack Units | Avg MSRP of SKUs Stocked ($) |
|----------|-----------|----------|------------|------------------------|-------------------------|---------------------|------------------------------|
| S101 | Downtown Grocery | Downtown Austin | Grocery | 15 | 6,500 | 580 | 4.20 |
| S102 | Domain Mart | The Domain, Austin | Convenience Store | 8 | 9,100 | 720 | 7.50 |
| S103 | South Austin Store | South Austin | Grocery | 12 | 7,150 | 640 | 5.20 |
| S104 | East Austin Provision | East Austin | Grocery | 14 | 6,150 | 610 | 3.80 |
| S105 | Westlake Fresh | Westlake, Austin | Convenience Store | 7 | 9,750 | 680 | 8.90 |
| S106 | Central Austin Store | Central Austin | Grocery | 11 | 7,700 | 660 | 5.60 |
| S107 | North Austin Store | North Austin | Grocery | 16 | 5,500 | 550 | 3.50 |
| S108 | Barton Creek Mart | Barton Creek, Austin | Convenience Store | 6 | 8,300 | 540 | 9.80 |
| S109 | Riverside Shop | Riverside, Austin | Grocery | 13 | 6,750 | 620 | 4.60 |
| S110 | Travis Heights Store | Travis Heights | Grocery | 10 | 7,050 | 600 | 6.00 |
| S111 | Mueller Store | Mueller, Austin | Grocery | 17 | 5,100 | 520 | 3.30 |
| S112 | Hyde Park Store | Hyde Park, Austin | Grocery | 9 | 8,050 | 650 | 6.50 |
| S113 | Zilker Kirana | Zilker, Austin | Grocery | 11 | 7,350 | 630 | 5.60 |
| S114 | Rosedale Provision | Rosedale, Austin | Grocery | 14 | 6,250 | 590 | 4.00 |
| S115 | Oak Hill Store | Oak Hill, Austin | Grocery | 12 | 5,950 | 560 | 4.40 |
| S116 | Arboretum Mart | The Arboretum, Austin | Convenience Store | 5 | 8,800 | 510 | 10.50 |
| S117 | Tarrytown Shop | Tarrytown, Austin | Grocery | 13 | 6,600 | 600 | 4.80 |
| S118 | Bee Cave Store | Bee Cave, Austin | Grocery | 10 | 7,850 | 640 | 5.80 |
| S119 | Cedar Park Kirana | Cedar Park | Grocery | 9 | 7,250 | 610 | 6.80 |
| S120 | Liquor Store | Downtown Austin | Liquor Store | 18 | 1,900 | 420 | 2.40 |

---

## Exercise 1: Scatter Plot — SKU Count vs Sales (10 min)

### Instructions

1. In Excel, select columns `Frito-Lay SKUs Stocked` (X-axis) and `Monthly Snack Sales` (Y-axis)
2. Insert a **Scatter Plot** (Insert → Chart → XY Scatter)
3. Add a **trendline** (right-click data points → Add Trendline → Linear)
4. Display the **R² value** on the chart (Trendline Options → Display R-squared)

### What to Observe

- Does the trendline slope upward (more SKUs = more sales) or downward?
- What is the R² value? Is the relationship strong (R² > 0.5) or weak?
- Are there any **outliers** — stores that don't fit the general pattern?

### Expected Insight

You should see a **negative correlation** — stores with more SKUs tend to have *lower* sales. The R² should be moderate (roughly 0.4–0.6), confirming the DSM's puzzle is real.

---

## Exercise 2: SKU Productivity Analysis (15 min)

### Instructions

Add a calculated column to your data:

```
Sales per SKU = Monthly Snack Sales / Frito-Lay SKUs Stocked
```

| Store ID | SKUs | Sales ($) | **Sales per SKU ($)** |
|----------|------|-----------|----------------------|
| S101 | 15 | 6,500 | ? |
| S102 | 8 | 9,100 | ? |
| ... | ... | ... | ... |

### Analysis Tasks

1. **Sort by Sales per SKU** (descending). Which stores have the highest SKU productivity?
2. **Create a bar chart** showing Sales per SKU for all 20 stores, sorted. Color-code by store type.
3. **Calculate the average Sales per SKU** for each store type:

| Store Type | Avg SKUs | Avg Sales | Avg Sales per SKU |
|------------|----------|-----------|-------------------|
| Convenience Store | | | |
| Grocery | | | |
| Liquor Store | | | |

### Key Question

> What pattern do you see between SKU count and SKU productivity? Convenience stores stock fewer SKUs but have much higher sales per SKU. Why?

The answer lies in **assortment curation**: convenience stores in premium locations (The Domain, Westlake, The Arboretum) stock **fewer but higher-value SKUs** that match their consumer profile. The grocery stores in residential areas stock more SKUs, including low-value ones that sit on shelves unsold.

---

## Exercise 3: The Avg MSRP Clue (10 min)

Look at the `Avg MSRP of SKUs Stocked` column. This reveals the **type** of SKUs each store carries.

### Instructions

1. Create a scatter plot: **Avg MSRP** (X-axis) vs **Monthly Sales** (Y-axis)
2. Add a trendline and R² value

### What to Observe

You should see a **positive correlation** — stores with higher average MSRP tend to have higher total sales. This means:

- It's not about **how many** SKUs — it's about **which** SKUs
- Stores carrying premium snacks (Doritos Nacho Cheese $8.50, Cheetos Flamin' Hot $7.99) generate more revenue per SKU than stores loaded with value packs (Lay's Classic $3.99, Ruffles Original $4.50)

### Build a 2x2 Matrix

Classify the 20 stores into four quadrants:

| | Few SKUs (≤ 10) | Many SKUs (> 10) |
|---|---|---|
| **High Sales (> $7,000)** | **Stars** — curated assortment, premium mix | **Unusual** — should investigate |
| **Low Sales (≤ $7,000)** | **Watch** — may need different SKUs | **Problem** — too many wrong SKUs |

Place each store in the right quadrant. Which quadrant has the most stores?

---

## Exercise 4: Numeric Distribution vs Weighted Distribution (15 min)

Now calculate ND and WD for **individual SKUs** across the 20 stores. Use this SKU-level data:

### SKU Presence Matrix

(1 = store carries the SKU, 0 = doesn't)

| Store ID | Sales ($) | Lay's Classic 10oz | Doritos Nacho Cheese 9oz | Ruffles Original 8.5oz | Cheetos Flamin' Hot 9oz | Fritos Original 9oz |
|----------|-----------|------------------|--------------------------|------------------------|-------------------------|---------------------|
| S101 | 6,500 | 1 | 1 | 1 | 1 | 0 |
| S102 | 9,100 | 1 | 1 | 1 | 1 | 1 |
| S103 | 7,150 | 1 | 1 | 1 | 1 | 0 |
| S104 | 6,150 | 1 | 1 | 1 | 1 | 0 |
| S105 | 9,750 | 1 | 1 | 1 | 1 | 1 |
| S106 | 7,700 | 1 | 1 | 1 | 1 | 0 |
| S107 | 5,500 | 1 | 1 | 1 | 0 | 0 |
| S108 | 8,300 | 0 | 1 | 0 | 1 | 1 |
| S109 | 6,750 | 1 | 1 | 1 | 0 | 0 |
| S110 | 7,050 | 1 | 1 | 1 | 1 | 0 |
| S111 | 5,100 | 1 | 1 | 1 | 0 | 0 |
| S112 | 8,050 | 1 | 1 | 1 | 1 | 0 |
| S113 | 7,350 | 1 | 1 | 1 | 1 | 0 |
| S114 | 6,250 | 1 | 1 | 1 | 0 | 0 |
| S115 | 5,950 | 1 | 1 | 1 | 0 | 0 |
| S116 | 8,800 | 0 | 1 | 0 | 1 | 1 |
| S117 | 6,600 | 1 | 1 | 1 | 0 | 0 |
| S118 | 7,850 | 1 | 1 | 1 | 1 | 0 |
| S119 | 7,250 | 1 | 1 | 1 | 1 | 1 |
| S120 | 1,900 | 1 | 0 | 0 | 0 | 0 |

### Calculations

For each SKU, calculate ND and WD:

| SKU | Stores Carrying | ND (%) | Sales of Carrying Stores ($) | Total Sales ($) | WD (%) | Gap |
|-----|----------------|--------|------------------------------|-----------------|--------|-----|
| Lay's Classic 10oz | | | | 136,500 | | |
| Doritos Nacho Cheese 9oz | | | | 136,500 | | |
| Ruffles Original 8.5oz | | | | 136,500 | | |
| Cheetos Flamin' Hot 9oz | | | | 136,500 | | |
| Fritos Original 9oz | | | | 136,500 | | |

### Excel Formula Hints

```
ND for Lay's Classic:  =COUNTIF(C2:C21, 1) / 20
WD for Lay's Classic:  =SUMPRODUCT(B2:B21 * C2:C21) / SUM(B2:B21)
```

### Analysis Questions

1. **Which SKU has the highest ND but lowest WD?** What does this mean?
2. **Which SKU has low ND but high WD?** Is this a problem or a strategy?
3. **Fritos Original is in only 4 stores. Should we push it to all 20?** Look at which 4 stores carry it — what do they have in common?
4. **If you could add one SKU to 5 stores to maximize WD improvement, which SKU and which 5 stores?**

---

## Exercise 5: The "Sweet Spot" — Optimal SKU Count (5 min)

Based on all your analysis, answer the DSM's original question:

> "We have better distribution downtown. Why are sales lower?"

Draft a **2-paragraph response** that covers:

1. **The finding:** More SKUs ≠ more sales. Stores with 5–10 curated, higher-value SKUs outperform stores with 14–18 low-value SKUs.
2. **The recommendation:** Instead of pushing more SKUs into every store, focus on getting the **right SKUs** into each store based on its consumer profile. This is exactly what the recommendation engine will automate.

---

## Deliverable Checklist

- [ ] Scatter plot: SKU count vs sales with trendline and R²
- [ ] Sales per SKU calculated for all 20 stores
- [ ] Store type comparison table (Convenience Store vs Grocery vs Liquor Store)
- [ ] Scatter plot: Avg MSRP vs sales with trendline
- [ ] 2x2 matrix with all stores classified
- [ ] ND and WD calculated for 5 SKUs with gap analysis
- [ ] Written 2-paragraph response to the DSM's question

---

## What's Next

You've completed **Position 2** — the hands-on application of CPG distribution fundamentals. You can now:
- Map the distribution journey and explain margins at each node
- Calculate sales rep performance metrics and recommend visit frequencies
- Analyze SKU-store fit using productivity metrics and ND/WD

In **Position 3**, we shift from distribution to **product analytics** — learning how to classify SKUs into performance tiers (heroes vs zombies) using Pareto analysis and composite scoring.
