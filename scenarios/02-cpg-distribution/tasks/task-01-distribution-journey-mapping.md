# Task 1: Map the Distribution Journey with Margin Analysis

## Overview

**Time:** ~45 minutes
**Tool:** Excel or PowerPoint
**Skill:** Process mapping, margin analysis
**Mapped Learning Objective:** Create a visual flowchart showing the complete distribution journey with margin analysis at each node

---

## The Brief

Your manager has asked you to prepare a **one-page distribution map** for a new team member joining next week. The map should answer one question clearly:

> "How does a $4.99 Head & Shoulders bottle travel from the Procter & Gamble plant in Cincinnati, OH to a consumer in Austin, TX — and how much money does each player in the chain make?"

You need to produce **two separate flowcharts** — one for the Independent Retailer path and one for the Chain Retailer path — with margin and inventory data at every node.

---

## What You'll Build

A visual document with three components:

1. **Independent Retailer Distribution Flowchart** — 5 nodes from factory to consumer
2. **Chain Retailer Distribution Flowchart** — 3 nodes (shorter path)
3. **Margin Comparison Table** — side-by-side economics for both channels

---

## Reference Data

Use the following data to build your flowcharts. These are representative numbers for a $4.99 MSRP personal care product in the Independent Retailer channel:

### Independent Retailer Channel — Node Economics

| Node | Role | Buys At ($) | Sells At ($) | Margin ($) | Margin (%) | Inventory Days |
|------|------|-------------|--------------|------------|------------|----------------|
| **Manufacturer** | Produces the product | — | 2.10 (ex-factory) | — | — | 30–45 |
| **C&F Agent** | Warehouses and forwards stock | — | — | 0.10 (commission) | ~4% of invoice | 15–30 |
| **Distributor** | Services retail outlets via sales reps | 2.45 (landing price) | 3.50 (to retailer) | 0.25 | ~10% | 7–15 |
| **Retailer (Corner Store)** | Sells to consumer | 3.50 | 4.99 (MSRP) | 1.49 | ~30% | 15–30 |
| **Consumer** | End buyer | 4.99 | — | — | — | — |

### Chain Retailer Channel — Node Economics

| Node | Role | Buys At ($) | Sells At ($) | Margin ($) | Margin (%) | Inventory Days |
|------|------|-------------|--------------|------------|------------|----------------|
| **Manufacturer** | Produces and ships directly to chain warehouse | — | 3.15 (after 25% trade discount) | — | — | 30–45 |
| **Chain Retailer (Walmart)** | Warehouses centrally, distributes to stores | 3.15 | 3.75 (discounted MSRP) | 0.60 | ~16% | 7–10 |
| **Consumer** | End buyer | 3.75 | — | — | — | — |

### Additional Context for Your Flowchart

| Aspect | Independent Retailer Path | Chain Retailer Path |
|--------|---------------------------|---------------------|
| Number of intermediaries | 3 (C&F, Distributor, Retailer) | 0 (direct to chain) |
| Company's net realization per unit | ~$1.50 | ~$2.10 |
| Total channel margin | ~$1.04 (21% of MSRP) | ~$0.60 (12% of MSRP) |
| Time from factory to shelf | 10–25 days | 5–10 days |
| Number of touchpoints for 1 unit | 5 handling events | 3 handling events |

---

## Step-by-Step Instructions

### Step 1: Create the Independent Retailer Flowchart (20 min)

Open Excel or PowerPoint and create a left-to-right flow:

```
[FACTORY] → [C&F WAREHOUSE] → [DISTRIBUTOR] → [CORNER STORE] → [CONSUMER]
  Cincinnati   Austin            South Congress  Mike's Market   End buyer
```

For each node, create a box containing:

| Field | Example (Distributor) |
|-------|----------------------|
| **Node name** | Distributor |
| **Location** | South Congress, Austin |
| **Buys at** | $2.45 |
| **Sells at** | $3.50 |
| **Margin** | $0.25 (10%) |
| **Inventory held** | 7–15 days |
| **Value added** | Credit to retailers, sales reps, last-mile delivery |

Connect the boxes with arrows. On each arrow, note the **price at which goods move** between nodes.

### Step 2: Create the Chain Retailer Flowchart (10 min)

Create a shorter flow:

```
[FACTORY] → [CHAIN CENTRAL WAREHOUSE] → [CHAIN STORE] → [CONSUMER]
  Cincinnati   Walmart, Dallas           Walmart, Austin
```

Note how the C&F and Distributor nodes are **eliminated**. The Chain Retailer performs warehousing, delivery, and retail all within one organization.

### Step 3: Build the Margin Waterfall Comparison (15 min)

Create a table or stacked bar chart comparing where the $4.99 goes in each channel:

**Suggested format — Stacked Bar Chart:**

| Component | Independent Retailer ($) | Chain Retailer ($) |
|-----------|--------------------------|--------------------|
| Company realization (after tax) | 1.50 | 2.10 |
| Sales tax | 0.40 | 0.40 |
| C&F commission | 0.10 | 0 |
| Distributor margin | 0.25 | 0 |
| Retailer margin | 1.49 | 0.60 |
| Consumer discount (off MSRP) | 0 | 1.24 |
| **Consumer pays** | **4.99** | **3.75** |

In Excel, select this data and insert a **Stacked Bar Chart** to visualize where the money flows differently across the two channels.

---

## Deliverable Checklist

Before you consider this task complete, verify:

- [ ] Independent Retailer flowchart has **all 5 nodes** with margin, inventory, and value-added data
- [ ] Chain Retailer flowchart shows the **shortened path** (no C&F, no distributor)
- [ ] Margin waterfall shows company realization is **higher in Chain Retailer** (~$2.10) than Independent Retailer (~$1.50)
- [ ] You can explain the **trade-off**: Independent Retailer gives wider reach (2.5M stores) but lower margins; Chain Retailer gives higher margins but limited reach (~150K stores)
- [ ] The document would make sense to a new team member with **no CPG background**

---

## Reflection Questions

After completing the flowchart, think about:

1. **The company makes $1.50 per unit in Independent Retailer but $2.10 in Chain Retailer. Why doesn't the company just sell everything through Chain Retailer?**

2. **The distributor earns $0.25 per unit. What would happen if the company tried to eliminate distributors and service corner stores directly?**

3. **Total time from factory to shelf is 10–25 days in Independent Retailer vs 5–10 days in Chain Retailer. What impact does this have on products with short shelf life (e.g., bread, dairy)?**

---

## What's Next

In Task 2, you'll work with **actual sales rep data** — calculating productive call rates, order values, and OOS rates from a daily visit log. Keep this distribution map handy — it provides the context for every number you'll crunch next.
