# Scenario 4: Distribution Metrics That Matter

## Context

Your manager pulls up a dashboard and points to two numbers:

> "Last quarter, our Numeric Distribution for Doritos Cool Ranch in the Austin metro 7-Eleven franchise stores was **72%**. Our Weighted Distribution was **41%**. The VP of Sales is thrilled — he sees 72% and thinks we're doing great. I see 41% and know we have a problem. Your job is to understand why these two numbers tell completely different stories."

This scenario introduces the two most important distribution metrics in CPG — and explains why the gap between them is exactly the opportunity our recommendation engine is designed to close.

---

## Metric 1: Numeric Distribution (ND)

### Definition

> **Numeric Distribution = Stores carrying a SKU / Total stores in the universe**

It's the simplest possible distribution metric — what **percentage of stores** stock your product?

### Example

Frito-Lay's Doritos Cool Ranch in the Austin metro 7-Eleven franchise stores:

| | Count |
|---|---|
| Total 7-Eleven franchise stores serviced | 150 |
| Stores stocking Doritos Cool Ranch (any size) | 108 |
| **Numeric Distribution** | **108 / 150 = 72%** |

On the surface, 72% looks strong. Doritos Cool Ranch is available in nearly 3 out of 4 stores. But here's the problem — **not all stores are equal**.

### The Blind Spot of Numeric Distribution

Consider these two 7-Eleven stores, both counted equally in ND:

| Store | Monthly Snack Sales | Doritos Cool Ranch Stocked? | Counted in ND? |
|-------|---------------------|----------------------------|----------------|
| **Store A:** High-traffic 7-Eleven near UT campus, Guadalupe Street | $8,500 | No | No |
| **Store B:** Low-traffic 7-Eleven in residential neighborhood, North Austin | $1,200 | Yes | Yes |

ND treats Store B ($1,200/month) the same as Store A ($8,500/month). You could have 72% ND by being present in thousands of small stores while missing the high-value ones. **ND counts stores. It doesn't weigh them.**

---

## Metric 2: Weighted Distribution (WD)

### Definition

> **Weighted Distribution = Sales of stores carrying a SKU / Total sales of all stores in the universe**

Instead of counting stores equally, WD **weights each store by its sales contribution**. A high-sales store matters more than a low-sales store.

### Example

Same Doritos Cool Ranch scenario, but now we look at sales:

| | Value |
|---|---|
| Total snack sales across 150 7-Eleven stores | $420,000/month |
| Snack sales of the 108 stores that stock Doritos Cool Ranch | $172,200/month |
| **Weighted Distribution** | **172,200 / 420,000 = 41%** |

Now the picture changes dramatically. Doritos Cool Ranch is present in 72% of stores, but those stores account for only 41% of total snack sales. **The high-value stores are the ones NOT stocking Doritos Cool Ranch.**

---

## The ND–WD Gap: What It Tells You

The gap between ND and WD is one of the most powerful diagnostic signals in CPG:

| ND | WD | Gap | Diagnosis |
|----|-----|-----|-----------|
| 72% | 41% | **31 points** | Present in many small stores, missing from high-value ones |
| 50% | 65% | **-15 points** | Present in fewer but high-value stores — selective, premium distribution |
| 60% | 58% | **2 points** | Evenly distributed across store sizes — balanced |
| 80% | 30% | **50 points** | Severe problem — widespread but in the wrong stores |

### Interpreting the Doritos Cool Ranch gap (ND 72%, WD 41%)

The 31-point gap means:

1. Doritos Cool Ranch is in **many low-value 7-Eleven stores** (pushing ND up)
2. Doritos Cool Ranch is **missing from many high-value 7-Eleven stores** (keeping WD down)
3. The stores where consumers spend the most on snacks are the stores where Doritos Cool Ranch is absent
4. **Revenue opportunity is being left on the table**

> **Why this matters for our project:** Our recommendation engine directly attacks the ND–WD gap. By identifying which high-value stores should carry which SKUs (but currently don't), we push WD upward. A 5-point WD improvement is worth far more than a 5-point ND improvement.

---

## Working Through the Math

Let's build the calculation step by step with a small dataset of 10 7-Eleven franchise stores:

### Raw Data

| Store | Location | Monthly Snack Sales ($) | Stocks Doritos Cool Ranch? |
|-------|----------|------------------------|---------------------------|
| Store 1 | Guadalupe St (near UT) | 9,200 | No |
| Store 2 | The Domain (office park) | 7,800 | No |
| Store 3 | South Congress | 6,500 | Yes |
| Store 4 | North Austin | 5,400 | Yes |
| Store 5 | East Austin | 4,100 | No |
| Store 6 | Westlake | 3,300 | Yes |
| Store 7 | Riverside | 2,200 | Yes |
| Store 8 | Mueller | 1,500 | Yes |
| Store 9 | Oak Hill | 800 | Yes |
| Store 10 | Cedar Park | 400 | Yes |

### Calculations

**Numeric Distribution:**

| | |
|---|---|
| Stores stocking Doritos Cool Ranch | 7 (Stores 3, 4, 6, 7, 8, 9, 10) |
| Total stores | 10 |
| **ND** | **7 / 10 = 70%** |

**Weighted Distribution:**

| | |
|---|---|
| Total snack sales, all stores | $41,200 |
| Snack sales of stores stocking Doritos Cool Ranch | $20,100 (6,500 + 5,400 + 3,300 + 2,200 + 1,500 + 800 + 400) |
| **WD** | **20,100 / 41,200 = 48.8%** |

**The gap:** ND is 70% but WD is only 48.8%. Doritos Cool Ranch is missing from the **top 2 stores** (Store 1: $9,200 near UT campus and Store 2: $7,800 at The Domain office park) and from **Store 5** ($4,100 in East Austin). These three stores alone represent $21,100 — more than half the total market.

**The recommendation:** If our engine recommends Doritos Cool Ranch to Stores 1, 2, and 5:

| | Before | After |
|---|---|---|
| ND | 70% | 100% |
| WD | 48.8% | 100% |
| **WD improvement** | — | **+51.2 points** |

In reality, not every store will adopt the recommendation. But even if 2 of 3 stores add Doritos Cool Ranch, WD jumps to ~90%. That's the power of targeting the **right** stores.

---

## SKU-Level ND and WD

So far we've looked at distribution for one SKU. In practice, you calculate ND and WD for **every SKU** to get a full portfolio picture:

| SKU | ND | WD | Gap | Action |
|-----|----|----|-----|--------|
| Lay's Classic 10oz | 95% | 92% | 3 pts | Healthy — nearly universal |
| Cheetos Crunchy 8oz | 68% | 72% | -4 pts | Good — present in high-value stores |
| Doritos Flamin' Hot Limon 9oz | 42% | 28% | 14 pts | Problem — missing from big stores |
| Doritos Cool Ranch 3oz | 55% | 31% | 24 pts | Problem — wrong store mix |
| Smartfood White Cheddar 6.75oz (premium) | 12% | 18% | -6 pts | Expected — selective premium distribution |

**Reading the table:**

- **Lay's Classic 10oz:** Near-universal distribution across 7-Eleven stores. Everyone stocks it, everyone buys it. No recommendation needed.
- **Cheetos Crunchy 8oz:** Negative gap means it over-indexes in high-value stores. Strong position.
- **Doritos Flamin' Hot Limon 9oz:** 14-point gap. Present in many stores but missing the big ones. **High-priority recommendation candidate.**
- **Doritos Cool Ranch 3oz:** 24-point gap. Worst mismatch — lots of small stores carry it but big stores don't. **Urgent recommendation target.**
- **Smartfood White Cheddar 6.75oz:** Negative gap, low ND. This is a premium product — you *don't want* it in every store. Only stores with the right consumer profile should carry it.

> **Key insight:** Not every SKU should have 100% ND. Premium SKUs need **selective distribution** — only in stores where the local consumer will buy them. Our recommendation engine must be smart enough to know when NOT to recommend.

---

## From Metrics to Recommendations

Here's how ND and WD directly feed our recommendation engine:

```
Step 1: Calculate ND and WD per SKU per cluster
             ↓
Step 2: Identify SKUs with large positive ND-WD gaps
         (present in many stores but missing from high-value ones)
             ↓
Step 3: For each store, find SKUs that:
         - Have high WD in the store's cluster (peers buy it)
         - Are NOT currently stocked by this store
         - Match the store's profile (not premium SKU in value store)
             ↓
Step 4: Rank by expected revenue contribution
             ↓
Step 5: Output: "7-Eleven Store #38472, recommend these 10 SKUs"
```

This is a simplified version of what we'll build. But the core idea is clear: **ND and WD help us identify where the gaps are, and our engine fills those gaps with the right SKUs for the right stores.**

---

## Adding POS-Based Metrics (Small-Format Chain Advantage)

Because we're targeting small-format chains with POS data, we can calculate additional metrics that aren't available for independent retailers:

| Metric | Formula | What It Tells You |
|--------|---------|-------------------|
| **Sales per SKU per store** | Total SKU sales / Store count | SKU productivity at store level |
| **Units per transaction (UPT)** | Total units / Total transactions | Basket size indicator |
| **Attach rate** | Transactions with SKU / Total transactions | How often SKU appears in baskets |
| **Repeat purchase rate** | Consumers who bought SKU 2+ times / Total buyers | Loyalty/retention metric |
| **Weekday vs weekend split** | Weekend sales / Total sales | Temporal demand pattern |
| **Daypart analysis** | Morning/Afternoon/Evening sales breakdown | When consumers buy this SKU |

> **Why this matters:** With independent retailer data, we only see what stores order. With small-format chain POS data, we see what consumers actually buy — enabling market basket analysis, customer segmentation, time-series forecasting, and A/B testing.

---

## Industry Benchmarks

For reference, here are typical ND and WD ranges for different product types in small-format chains:

| Product Category | Good ND | Good WD | Typical Gap |
|-----------------|---------|---------|-------------|
| Mass staples (Lay's Classic, Coca-Cola, Bud Light) | 85–95% | 80–90% | 5–10 pts |
| Popular snacks (Doritos Nacho Cheese, Cheetos) | 80–90% | 70–85% | 5–15 pts |
| Mid-range varieties (Cool Ranch, Flamin' Hot) | 55–70% | 45–60% | 10–20 pts |
| Premium products (Smartfood, Kettle Brand, Terra) | 10–25% | 15–30% | Negative (selective) |
| New launches (first 6 months) | 15–30% | 10–20% | 5–15 pts |

---

## Key Terms Glossary

| Term | Definition |
|------|-----------|
| **Numeric Distribution (ND)** | Percentage of stores stocking a SKU — counts all stores equally |
| **Weighted Distribution (WD)** | Percentage of total market sales represented by stores stocking a SKU — weights stores by sales |
| **ND–WD Gap** | Difference between ND and WD; positive gap means product is in many small stores but missing from big ones |
| **Selective distribution** | Deliberate strategy of placing premium products only in appropriate stores |
| **Store universe** | Total set of retail outlets in a defined geography that a company services |
| **Must-Stock List (MSL)** | Company-defined list of SKUs that every store in a territory should ideally carry |
| **POS data** | Point-of-sale scan data from checkout systems |
| **Planogram** | Visual diagram showing exactly where each product goes on shelves |

---

## Check Your Understanding

1. **A SKU has 80% ND and 35% WD in 7-Eleven stores. In one sentence, describe the distribution problem.**

2. **A premium craft beer brand has 8% ND and 22% WD in 7-Eleven stores. Is this a problem? Why or why not?**

3. **Using the 10-store example above: if the recommendation engine gets Store 1 ($9,200) to stock Doritos Cool Ranch but loses Store 10 ($400) which drops the product — what happens to ND and WD? Which metric improves and which stays flat?**

4. **Why would calculating WD at the cluster level (e.g., "college neighborhood stores" vs "office park stores") instead of city level give us more actionable recommendations?**

5. **Calculate:** A company has 150 7-Eleven franchise stores in a territory. A SKU is in 105 stores (ND = 70%). Total territory sales = $5 million. Sales from the 105 stores = $2.8 million. What is the WD? If the company can add the SKU to 15 stores that contribute $800,000 in sales, what will the new WD be?

---

## What's Next

With these four scenarios, you now have the **complete domain foundation** for our recommendation engine:

1. **How products flow** — Factory to Consumer via DSD (Scenario 1)
2. **How data is generated** — Field merchandiser operations + POS data (Scenario 2)
3. **Where we focus** — Small-format chains, not independent or large-format (Scenario 3)
4. **How we measure success** — ND and WD (Scenario 4)

Next, we move to **Position 2: Understanding CPG Distribution — Hands On**, where you'll apply everything you've learned: map a distribution journey, calculate metrics from real sales data, and profile stores for visit frequency recommendations.------|
| 72% | 41% | **31 points** | Present in many small stores, missing from high-value ones |
| 50% | 65% | **-15 points** | Present in fewer but high-value stores — selective, premium distribution |
| 60% | 58% | **2 points** | Evenly distributed across store sizes — balanced |
| 80% | 30% | **50 points** | Severe problem — widespread but in the wrong stores |

### Interpreting the Doritos Cool Ranch gap (ND 72%, WD 41%)

The 31-point gap means:

1. Doritos Cool Ranch is in **many low-value stores** (pushing ND up)
2. Doritos Cool Ranch is **missing from many high-value stores** (keeping WD down)
3. The stores where consumers spend the most on snacks are the stores where Doritos Cool Ranch is absent
4. **Revenue opportunity is being left on the table**

> **Why this matters for our project:** Our recommendation engine directly attacks the ND–WD gap. By identifying which high-value stores should carry which SKUs (but currently don't), we push WD upward. A 5-point WD improvement is worth far more than a 5-point ND improvement.

---

## Working Through the Math

Let's build the calculation step by step with a small dataset of 10 stores:

### Raw Data

| Store | Monthly Snack Sales ($) | Stocks Doritos Cool Ranch? |
|-------|------------------------|---------------------------|
| Store 1 | 9,200 | No |
| Store 2 | 7,800 | No |
| Store 3 | 6,500 | Yes |
| Store 4 | 5,400 | Yes |
| Store 5 | 4,100 | No |
| Store 6 | 3,300 | Yes |
| Store 7 | 2,200 | Yes |
| Store 8 | 1,500 | Yes |
| Store 9 | 800 | Yes |
| Store 10 | 400 | Yes |

### Calculations

**Numeric Distribution:**

| | |
|---|---|
| Stores stocking Doritos Cool Ranch | 7 (Stores 3, 4, 6, 7, 8, 9, 10) |
| Total stores | 10 |
| **ND** | **7 / 10 = 70%** |

**Weighted Distribution:**

| | |
|---|---|
| Total snack sales, all stores | $41,200 |
| Snack sales of stores stocking Doritos Cool Ranch | $20,100 (6,500 + 5,400 + 3,300 + 2,200 + 1,500 + 800 + 400) |
| **WD** | **20,100 / 41,200 = 48.8%** |

**The gap:** ND is 70% but WD is only 48.8%. Doritos Cool Ranch is missing from the **top 2 stores** (Store 1: $9,200 and Store 2: $7,800) and from **Store 5** ($4,100). These three stores alone represent $21,100 — more than half the total market.

**The recommendation:** If our engine recommends Doritos Cool Ranch to Stores 1, 2, and 5:

| | Before | After |
|---|---|---|
| ND | 70% | 100% |
| WD | 48.8% | 100% |
| **WD improvement** | — | **+51.2 points** |

In reality, not every store will adopt the recommendation. But even if 2 of 3 stores add Doritos Cool Ranch, WD jumps to ~90%. That's the power of targeting the **right** stores.

---

## SKU-Level ND and WD

So far we've looked at distribution for one SKU. In practice, you calculate ND and WD for **every SKU** to get a full portfolio picture:

| SKU | ND | WD | Gap | Action |
|-----|----|----|-----|--------|
| Lay's Classic 10oz | 95% | 92% | 3 pts | Healthy — nearly universal |
| Cheetos Crunchy 8oz | 68% | 72% | -4 pts | Good — present in high-value stores |
| Doritos Flamin' Hot Limon 9oz | 42% | 28% | 14 pts | Problem — missing from big stores |
| Doritos Cool Ranch 3oz | 55% | 31% | 24 pts | Problem — wrong store mix |
| Smartfood White Cheddar 6.75oz (premium) | 12% | 18% | -6 pts | Expected — selective premium distribution |

**Reading the table:**

- **Lay's Classic 10oz:** Near-universal distribution. Everyone stocks it, everyone buys it. No recommendation needed.
- **Cheetos Crunchy 8oz:** Negative gap means it over-indexes in high-value stores. Strong position.
- **Doritos Flamin' Hot Limon 9oz:** 14-point gap. Present in many stores but missing the big ones. **High-priority recommendation candidate.**
- **Doritos Cool Ranch 3oz:** 24-point gap. Worst mismatch — lots of small stores carry it but big stores don't. **Urgent recommendation target.**
- **Smartfood White Cheddar 6.75oz:** Negative gap, low ND. This is a premium product — you *don't want* it in every store. Only stores with the right consumer profile should carry it.

> **Key insight:** Not every SKU should have 100% ND. Premium SKUs need **selective distribution** — only in stores where the local consumer will buy them. Our recommendation engine must be smart enough to know when NOT to recommend.

---

## From Metrics to Recommendations

Here's how ND and WD directly feed our recommendation engine:

```
Step 1: Calculate ND and WD per SKU per cluster
             ↓
Step 2: Identify SKUs with large positive ND-WD gaps
         (present in many stores but missing from high-value ones)
             ↓
Step 3: For each store, find SKUs that:
         - Have high WD in the store's cluster (peers buy it)
         - Are NOT currently stocked by this store
         - Match the store's profile (not premium SKU in value store)
             ↓
Step 4: Rank by expected revenue contribution
             ↓
Step 5: Output: "Store #4721, recommend these 10 SKUs"
```

This is a simplified version of what we'll build. But the core idea is clear: **ND and WD help us identify where the gaps are, and our engine fills those gaps with the right SKUs for the right stores.**

---

## Industry Benchmarks

For reference, here are typical ND and WD ranges for different product types:

| Product Category | Good ND | Good WD | Typical Gap |
|-----------------|---------|---------|-------------|
| Mass staples (Lay's Classic, Coca-Cola, Bud Light) | 85–95% | 80–90% | 5–10 pts |
| Popular snacks (Doritos Nacho Cheese, Cheetos) | 80–90% | 70–85% | 5–15 pts |
| Mid-range varieties (Cool Ranch, Flamin' Hot) | 55–70% | 45–60% | 10–20 pts |
| Premium products (Smartfood, Kettle Brand, Terra) | 10–25% | 15–30% | Negative (selective) |
| New launches (first 6 months) | 15–30% | 10–20% | 5–15 pts |

---

## Key Terms Glossary

| Term | Definition |
|------|-----------|
| **Numeric Distribution (ND)** | Percentage of stores stocking a SKU — counts all stores equally |
| **Weighted Distribution (WD)** | Percentage of total market sales represented by stores stocking a SKU — weights stores by sales |
| **ND–WD Gap** | Difference between ND and WD; positive gap means product is in many small stores but missing from big ones |
| **Selective distribution** | Deliberate strategy of placing premium products only in appropriate stores |
| **Store universe** | Total set of retail outlets in a defined geography that a company services |
| **Must-Stock List (MSL)** | Company-defined list of SKUs that every store in a territory should ideally carry |

---

## Check Your Understanding

1. **A SKU has 80% ND and 35% WD. In one sentence, describe the distribution problem.**

2. **A premium craft beer brand has 8% ND and 22% WD. Is this a problem? Why or why not?**

3. **Using the 10-store example above: if the recommendation engine gets Store 1 ($9,200) to stock Doritos Cool Ranch but loses Store 10 ($400) which drops the product — what happens to ND and WD? Which metric improves and which stays flat?**

4. **Why would calculating WD at the cluster level (instead of city level) give us more actionable recommendations?**

5. **Calculate:** A company has 8,000 stores in a territory. A SKU is in 5,600 stores (ND = 70%). Total territory sales = $50 million. Sales from the 5,600 stores = $28 million. What is the WD? If the company can add the SKU to 400 stores that contribute $8 million in sales, what will the new WD be?

---

## What's Next

With these four scenarios, you now have the **complete domain foundation** for our recommendation engine:

1. **How products flow** — Factory to Consumer (Scenario 1)
2. **How data is generated** — Sales rep operations (Scenario 2)
3. **Where we focus** — Independent retailers, not chains (Scenario 3)
4. **How we measure success** — ND and WD (Scenario 4)

Next, we move to **Position 2: Understanding CPG Distribution — Hands On**, where you'll apply everything you've learned: map a distribution journey, calculate metrics from real sales data, and profile stores for visit frequency recommendations.
