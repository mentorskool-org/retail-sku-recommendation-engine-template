# Task 2: Analyze a Sales Rep's Weekly Store Visit Data

## Overview

**Time:** ~50 minutes
**Tool:** Excel
**Skill:** Metric calculation, data interpretation, benchmarking
**Mapped Learning Objectives:**
- Calculate productive call rate, average order value, and OOS rate from sales data
- Profile store characteristics and recommend visit frequencies based on sales potential

---

## The Brief

You have access to **one week of daily visit data** for Mike, a PepsiCo/Frito-Lay sales rep covering 45 independent retailers in Austin, TX. Your manager wants a one-page performance summary answering:

> "How is Mike doing this week? Where should he focus next week? Which stores deserve more attention and which ones are we over-servicing?"

---

## Dataset: Mike's Weekly Visit Log

Open the workbook **[task-02-sales-rep-analysis-workbook.xlsx](task-02-sales-rep-analysis-workbook.xlsx)**. It contains 6 sheets:

| Sheet | Contents |
|-------|----------|
| **visit_log** | Raw data — 45 store visits with all fields |
| **Ex1 - Weekly Summary** | Pre-formatted metrics table + benchmarks (fill in yellow cells) |
| **Ex2 - Route Breakdown** | Route-level summary template with formula hints |
| **Ex3 - Store Type** | Store type comparison template |
| **Ex4 - OOS Analysis** | OOS summary template |
| **Ex5 - Visit Frequency** | Store classification framework + all 45 stores pre-loaded for frequency assignment |

All yellow-highlighted cells are where you enter your answers. Formula hints are provided on each sheet.

### Raw Data Preview (visit_log sheet)

| Visit Date | Day | Route Plan | Store ID | Store Name | Store Type | Visit Status | Order Value ($) | Order Lines | OOS SKUs Reported | Visibility Placed |
|------------|-----|------------|----------|------------|------------|-------------|------------------|-------------|-------------------|-------------------|
| 14-Oct-2025 | Mon | ATX-4th-South | S001 | Mike's Corner Store | Grocery | Productive | 1,400 | 5 | Lay's Classic 10oz | 1 |
| 14-Oct-2025 | Mon | ATX-4th-South | S002 | Tony's Provision | Grocery | Productive | 1,100 | 4 | — | 0 |
| 14-Oct-2025 | Mon | ATX-4th-South | S003 | James Grocery | Grocery | Non-productive | 0 | 0 | — | 0 |
| 14-Oct-2025 | Mon | ATX-4th-South | S004 | Sarah's Supermart | Convenience Store | Productive | 1,900 | 7 | — | 1 |
| 14-Oct-2025 | Mon | ATX-4th-South | S005 | Quick Stop | Liquor Store | Non-productive | 0 | 0 | Doritos Cool Ranch 9oz | 0 |
| 14-Oct-2025 | Mon | ATX-4th-South | S006 | New Central Store | Grocery | Productive | 750 | 3 | — | 0 |
| 14-Oct-2025 | Mon | ATX-4th-South | S007 | Austin Market | Grocery | Non-productive | 0 | 0 | — | 0 |
| 14-Oct-2025 | Mon | ATX-4th-South | S008 | Fresh Corner | Grocery | Productive | 1,200 | 4 | Cheetos Flamin' Hot 9oz | 0 |
| 15-Oct-2025 | Tue | ATX-4th-North | S009 | Northside Store | Grocery | Productive | 1,050 | 4 | — | 0 |
| 15-Oct-2025 | Tue | ATX-4th-North | S010 | Westside Provision | Grocery | Productive | 1,650 | 6 | Lay's Classic 10oz | 1 |
| 15-Oct-2025 | Tue | ATX-4th-North | S011 | Maria's Traders | Grocery | Non-productive | 0 | 0 | — | 0 |
| 15-Oct-2025 | Tue | ATX-4th-North | S012 | JP Store | Liquor Store | Non-productive | 0 | 0 | — | 0 |
| 15-Oct-2025 | Tue | ATX-4th-North | S013 | Central Mart | Convenience Store | Productive | 2,150 | 8 | — | 0 |
| 15-Oct-2025 | Tue | ATX-4th-North | S014 | Eastside Store | Grocery | Productive | 875 | 3 | Doritos Cool Ranch 9oz | 0 |
| 15-Oct-2025 | Tue | ATX-4th-North | S015 | Western Stores | Grocery | Productive | 1,250 | 5 | — | 1 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S016 | Riverside Store | Grocery | Productive | 1,550 | 5 | — | 0 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S017 | Southside Traders | Grocery | Productive | 950 | 3 | Lay's Classic 10oz | 0 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S018 | Mother Store | Convenience Store | Productive | 2,550 | 9 | — | 1 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S019 | Corner Market | Liquor Store | Non-productive | 0 | 0 | Ruffles Original 8.5oz | 0 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S020 | Downtown Stores | Grocery | Productive | 825 | 3 | — | 0 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S021 | Royal Provision | Grocery | Non-productive | 0 | 0 | — | 0 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S022 | Star Grocery | Grocery | Productive | 1,350 | 5 | — | 0 |
| 16-Oct-2025 | Wed | ATX-3rd-Block | S023 | Guru Stores | Grocery | Productive | 925 | 4 | Cheetos Flamin' Hot 9oz | 0 |
| 17-Oct-2025 | Thu | ATX-9th-Block | S024 | Northern Store | Grocery | Productive | 1,700 | 6 | — | 1 |
| 17-Oct-2025 | Thu | ATX-9th-Block | S025 | Daily Essentials | Convenience Store | Productive | 2,850 | 10 | — | 0 |
| 17-Oct-2025 | Thu | ATX-9th-Block | S026 | Southeast Provision | Grocery | Productive | 900 | 3 | Lay's Classic 10oz | 0 |
| 17-Oct-2025 | Thu | ATX-9th-Block | S027 | Local Store | Grocery | Non-productive | 0 | 0 | — | 0 |
| 17-Oct-2025 | Thu | ATX-9th-Block | S028 | Quick Mart | Grocery | Productive | 1,275 | 4 | — | 0 |
| 17-Oct-2025 | Thu | ATX-9th-Block | S029 | Patel Store | Liquor Store | Non-productive | 0 | 0 | Doritos Cool Ranch 9oz | 0 |
| 17-Oct-2025 | Thu | ATX-9th-Block | S030 | Green Fresh | Grocery | Productive | 975 | 4 | — | 0 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S031 | Big Store | Convenience Store | Productive | 2,450 | 8 | — | 1 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S032 | Kamala Stores | Grocery | Productive | 1,200 | 4 | — | 0 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S033 | Reliable Point | Grocery | Productive | 1,400 | 5 | Ruffles Original 8.5oz | 0 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S034 | Reliable Traders | Grocery | Non-productive | 0 | 0 | — | 0 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S035 | Small Store | Liquor Store | Non-productive | 0 | 0 | — | 0 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S036 | Western Store | Grocery | Productive | 1,075 | 4 | — | 0 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S037 | New Modern Store | Grocery | Productive | 800 | 3 | Lay's Classic 10oz | 0 |
| 18-Oct-2025 | Fri | ATX-2nd-Phase | S038 | Pooja Provision | Grocery | Productive | 1,325 | 5 | — | 0 |
| 19-Oct-2025 | Sat | ATX-5th-Phase | S039 | Mega Store | Convenience Store | Productive | 2,200 | 7 | — | 1 |
| 19-Oct-2025 | Sat | ATX-5th-Phase | S040 | Sundar Stores | Grocery | Productive | 1,000 | 3 | — | 0 |
| 19-Oct-2025 | Sat | ATX-5th-Phase | S041 | Central Traders | Grocery | Productive | 1,450 | 5 | Cheetos Flamin' Hot 9oz | 0 |
| 19-Oct-2025 | Sat | ATX-5th-Phase | S042 | Lucky Store | Liquor Store | Non-productive | 0 | 0 | — | 0 |
| 19-Oct-2025 | Sat | ATX-5th-Phase | S043 | Central Provision | Grocery | Productive | 1,150 | 4 | — | 0 |
| 19-Oct-2025 | Sat | ATX-5th-Phase | S044 | Riverside Store | Grocery | Non-productive | 0 | 0 | Doritos Cool Ranch 9oz | 0 |
| 19-Oct-2025 | Sat | ATX-5th-Phase | S045 | Southside Mart | Grocery | Productive | 900 | 3 | — | 0 |

---

## Exercise 1: Weekly Performance Summary (15 min)

Calculate the following metrics for Mike's entire week:

### Metrics to Calculate

| # | Metric | Formula | Your Answer |
|---|--------|---------|-------------|
| 1 | Total stores visited | Count all rows | |
| 2 | Productive calls | Count where Visit Status = "Productive" | |
| 3 | Non-productive calls | Count where Visit Status = "Non-productive" | |
| 4 | **Productive call rate** | Productive / Total visited | |
| 5 | Total order value | SUM of Order Value | |
| 6 | Total order lines | SUM of Order Lines | |
| 7 | **Avg order value per productive call** | Total order value / Productive calls | |
| 8 | **Avg order lines per productive call** | Total order lines / Productive calls | |
| 9 | Visibility placements | SUM of Visibility Placed | |
| 10 | Stores with OOS reported | Count where OOS SKUs ≠ "—" | |

### Excel Formulas You'll Need

```
Productive calls:       =COUNTIF(G:G, "Productive")
Non-productive calls:   =COUNTIF(G:G, "Non-productive")
Total order value:      =SUMIF(G:G, "Productive", H:H)
OOS stores:             =COUNTIF(J:J, "<>—") - 1    (subtract header)
```

### Benchmark Your Results

After calculating, rate Mike's week:

| Metric | Poor | Average | Good | Mike |
|--------|------|---------|------|--------|
| Productive call rate | < 50% | 50–65% | > 65% | ? |
| Avg order value / productive call | < $600 | $600–1,200 | > $1,200 | ? |
| Avg order lines / productive call | < 3 | 3–5 | > 5 | ? |

---

## Exercise 2: Route Plan-Level Breakdown (15 min)

Not all routes perform equally. Break down performance **by route plan** (by day):

### Build This Summary Table

| Route Plan | Day | Stores Visited | Productive Calls | Prod. Call Rate | Total Order Value | Avg Order Value | OOS Reports |
|------------|-----|---------------|-----------------|-----------------|-------------------|-----------------|-------------|
| ATX-4th-South | Mon | | | | | | |
| ATX-4th-North | Tue | | | | | | |
| ATX-3rd-Block | Wed | | | | | | |
| ATX-9th-Block | Thu | | | | | | |
| ATX-2nd-Phase | Fri | | | | | | |
| ATX-5th-Phase | Sat | | | | | | |

### Excel Approach

Use `COUNTIFS` and `SUMIFS` to calculate per route plan:

```
Productive calls (Mon): =COUNTIFS(C:C, "ATX-4th-South", G:G, "Productive")
Order value (Mon):      =SUMIFS(H:H, C:C, "ATX-4th-South", G:G, "Productive")
```

### Analysis Questions

After building the table:

1. **Which route has the highest productive call rate?** What might explain this?
2. **Which route has the highest average order value?** Look at the store types in that route — do you see a pattern?
3. **Which route has the most OOS reports?** Should Mike escalate this to his District Sales Manager (DSM)?

---

## Exercise 3: Store Type Analysis (10 min)

Analyze performance by **store type** (Grocery, Convenience Store, Liquor Store):

### Build This Summary Table

| Store Type | Store Count | Productive Calls | Prod. Call Rate | Total Order Value | Avg Order Value | OOS Count |
|------------|------------|-----------------|-----------------|-------------------|-----------------|-----------|
| Grocery | | | | | | |
| Convenience Store | | | | | | |
| Liquor Store | | | | | | |

### Analysis Questions

1. **What's the productive call rate for Liquor Stores?** Should Mike keep visiting them weekly?
2. **How do Convenience Stores compare to Grocery stores on average order value?** What does this imply for visit frequency?
3. **If Mike could only visit 30 stores per week instead of 45, which store type should he deprioritize? Why?**

---

## Exercise 4: OOS Analysis (10 min)

Extract and analyze all out-of-stock reports:

### Build This Summary Table

| OOS SKU | Times Reported | Stores Affected | Store IDs |
|---------|---------------|-----------------|-----------|
| Lay's Classic 10oz | | | |
| Doritos Cool Ranch 9oz | | | |
| Cheetos Flamin' Hot 9oz | | | |
| Ruffles Original 8.5oz | | | |

### Analysis Questions

1. **Which SKU has the most OOS reports?** Is this a supply issue or a demand signal?
2. **Doritos Cool Ranch 9oz is out of stock in Liquor Stores. What does this tell you about demand for that SKU in small outlets?**
3. **If you had to prioritize one SKU for restocking, which would it be and why?** (Hint: consider which SKU's OOS is costing the most lost revenue)

---

## Exercise 5: Store Visit Frequency Recommendation (10 min)

Based on your analysis, recommend how often Mike should visit each store. Use this framework:

| Store Profile | Recommended Frequency | Reasoning |
|--------------|----------------------|-----------|
| Convenience Store, order value > $1,500 | 2x per week | High value, high potential for new SKU adoption |
| Grocery, order value $800–1,500 | 1x per week (current) | Standard performance, maintain relationship |
| Grocery, order value < $800 | 1x per 2 weeks | Low value, free up time for higher-value stores |
| Liquor Store, consistently non-productive | 1x per month (or drop) | Minimal business, drains productive time |

### Your Task

Classify each of the 45 stores into one of the above categories. Create a column in your Excel sheet called `Recommended Frequency` and assign each store.

Then answer:

1. **How many stores would Mike visit 2x/week?** How many extra visits does this add?
2. **How many stores could be moved to bi-weekly visits?** How many visits does this free up?
3. **Net effect:** Does Mike's total weekly workload increase, decrease, or stay the same?

> **Connection to our project:** This store profiling exercise is a simplified version of what our recommendation engine does. Instead of manually classifying stores, we'll use **K-Means clustering** to group stores by sales behavior — then generate recommendations per cluster. You just did it by hand with 45 stores. The engine will do it for 8,000.

---

## Deliverable Checklist

- [ ] Weekly performance summary with all 10 metrics calculated
- [ ] Route-level breakdown table with analysis
- [ ] Store type comparison table
- [ ] OOS analysis table
- [ ] Store frequency recommendation for all 45 stores
- [ ] At least 3 written insights explaining what the data tells you about Mike's territory

---

## What's Next

In Task 3, you'll investigate a counterintuitive finding: why stores with MORE SKUs sometimes sell LESS. You'll calculate SKU productivity, explore Numeric vs Weighted Distribution, and identify the "sweet spot" for assortment size.
