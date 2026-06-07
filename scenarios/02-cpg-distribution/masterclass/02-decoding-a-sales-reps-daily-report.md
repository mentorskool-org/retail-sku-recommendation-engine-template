# Scenario 2: Decoding a Field Merchandiser's Daily Report

## Context

Meet Mike. He's a **field merchandiser** (also called route sales rep) for Frito-Lay (a PepsiCo subsidiary), servicing **45 7-Eleven franchise stores** in the Austin, Texas metro area. Every evening, Mike submits a daily report to his District Sales Manager (DSM). Today's report reads:

### Daily Sales Report

| Field | Value |
|-------|-------|
| **Date** | Monday, 14 Oct 2025 |
| **Route** | Austin Metro – Zone A (7-Eleven Franchise) |
| **Stores planned** | 9 |
| **Stores visited** | 9 |
| **Productive calls** | 8 |
| **Orders** | 6 orders worth $4,250 |
| **Order lines** | 28 |
| **POS data reviewed** | 9 stores |
| **Planogram compliance checks** | 9 stores (8 passed, 1 failed) |
| **Visibility placements** | 3 (end-cap display for Doritos, clip strip for Cheetos, cooler placement for Propel) |
| **OOS reported** | 2 (Lay's Classic 10oz — 2 stores) |
| **Returns collected** | $85 (damaged Tostitos bags, expired Funyuns) |

Your manager looks at this and says:

> "This one report tells you everything about how retail execution works in small-format chains. Every number here will eventually flow into our database. Before you touch the data, I want you to understand what generates it."

---

## Breaking Down the Report: Line by Line

### Route & Territory Planning

Mike doesn't randomly visit stores. His route is pre-planned:

**Route Plan:** A geographic division of a field merchandiser's territory into daily routes. Mike's 45 stores are divided into **5 routes** — one for each working day (Monday through Friday).

| Day | Route | Stores |
|-----|-------|--------|
| Monday | Austin Metro – Zone A (7-Eleven) | 9 |
| Tuesday | Austin Metro – Zone B (7-Eleven) | 9 |
| Wednesday | South Austin / Zilker (Circle K) | 9 |
| Thursday | North Austin / The Domain (Dollar General) | 9 |
| Friday | East Austin / Riverside (Wawa) | 9 |

**Fixed Route Schedule:** The formalized, company-approved version of the route plan. Once set, the schedule rarely changes. It ensures:
- Every store gets visited **at least once a week** (for high-priority stores, twice)
- The Frito-Lay delivery truck can follow the same route as the field merchandiser
- The company can track **coverage compliance** — did Mike actually visit all planned stores?

> **Why this matters for our project:** When we build the recommendation engine, the output goes to Mike. He opens his handheld device before visiting a store and sees: "Recommend these 5 SKUs to Store #38472." The recommendations must be **store-specific** because Mike visits different stores each day.

---

### Stores Planned vs. Stores Visited

**Planned: 9 | Visited: 9**

Mike had a perfect day — he visited all planned stores. But that's not always the case:

- **Store closed** — franchise operator on vacation, holiday, renovation
- **Manager not available** — only a part-time clerk present who can't approve order changes
- **Time crunch** — previous store took too long (handling a complaint or setting up a display)
- **Delivery delay** — Frito-Lay truck didn't arrive, so visit was rescheduled

**Coverage rate = Stores Visited / Stores Planned = 9/9 = 100%**

Industry benchmark: **85-90%** coverage is considered good. Below 80% triggers a conversation with the DSM.

---

### Productive Calls vs. Non-Productive Calls

This is one of the most important metrics in retail execution.

**Productive call:** A store visit where **at least one objective was achieved** — order placed, display placement, new SKU introduction, payment collection, or planogram compliance verified.

**Non-productive call:** Mike visited the store but left without any business outcome — no order, no display placed, no compliance check completed.

From Mike's report:
- Visited: 9 stores
- Productive calls: 8
- Non-productive calls: 1

**Productive call rate = Productive Calls / Stores Visited = 8/9 = 88.9%**

| Performance | Productive Call Rate |
|-------------|---------------------|
| Excellent | > 80% |
| Good | 65-80% |
| Average | 50-65% |
| Needs improvement | < 50% |

Mike is in the "Excellent" zone. But that 1 non-productive call is worth investigating:

- Was the store overstocked from last week? (demand issue)
- Did the franchise operator have a complaint? (service issue)
- Were the right SKUs not available at the Frito-Lay DC? (supply issue)
- Did Mike not pitch effectively? (capability issue)

> **Why this matters for our project:** If we recommend SKUs that the store **already has in stock**, the call becomes non-productive. Our engine needs to be smart enough to recommend SKUs the store **doesn't currently carry but should** — based on what similar stores sell successfully.

---

### Orders: Value vs. Lines

**Orders: 6 worth $4,250 | Order lines: 28**

Two different but complementary metrics:

**Order value ($4,250):** Total monetary value of all orders placed today. This is the top-line number that sales managers track.

**Order lines (28):** The number of distinct SKU-quantity combinations ordered. 6 orders with 28 lines means each order had ~4-5 different products.

Why track both?

| Scenario | Order Value | Order Lines | What It Means |
|----------|------------|-------------|---------------|
| High value, few lines | $3,500 | 6 | Bulk order of a few items — possibly a promotion or bulk deal |
| Low value, many lines | $800 | 20 | Small quantities of many items — healthy, diverse demand |
| High value, many lines | $4,500 | 30 | Strong store with broad demand — a "Gold" store |
| Low value, few lines | $400 | 4 | Weak store or poor selling day |

**Average order value (AOV) = Total Order Value / Number of Orders = $4,250 / 6 = $708**

**Average order value per productive call = $4,250 / 8 = $531**

This second metric is more meaningful — it tells you how much revenue each successful interaction generates.

> **Why this matters for our project:** When our recommendation engine suggests SKUs, we can estimate the **projected revenue per recommendation** by looking at the average selling rate of that SKU in similar stores. This becomes the basis for ranking recommendations by expected impact.

---

### POS Data Review (Small-Format Chain Advantage)

**POS data reviewed: 9 stores**

This is a key difference from independent retailer data. At each 7-Eleven, Mike:

1. Opens his handheld device (or tablet)
2. Logs into the Frito-Lay merchandiser app
3. Reviews the store's **POS scan data** from the past week:
   - Which SKUs sold and how many units
   - Daypart analysis (morning/afternoon/evening sales)
   - Weekday vs. weekend patterns
   - Attach rates (which SKUs are bought together)
4. Compares POS data to current inventory levels
5. Identifies gaps: "This store sold 45 bags of Doritos Flamin' Hot Limon last week but only has 12 on shelf — need to recommend restocking"

**Why POS data matters:**
- With independent retailers, we only see **what stores order** (not what consumers buy)
- With small-format chains, we see **what consumers actually purchase** — every scan, timestamped
- This enables **market basket analysis**, **customer segmentation**, **time-series forecasting**, and **A/B testing**

> **Why this matters for our project:** POS data is the primary input for our recommendation engine. It tells us true consumer demand, not just store ordering patterns.

---

### Planogram Compliance Checks

**Planogram compliance checks: 9 stores (8 passed, 1 failed)**

A **planogram** is a visual diagram showing exactly where each product goes on shelves. For 7-Eleven stores, Frito-Lay negotiates planogram placement as part of their supply agreement.

Mike checks:
- Is each SKU in its assigned slot?
- Are facings correct? (number of product faces visible)
- Is the shelf tag/price label correct?
- Is there adequate stock behind the shelf?

**Planogram compliance rate = Stores Passing / Total Stores = 8/9 = 88.9%**

| Compliance Rate | Status |
|-----------------|--------|
| > 95% | Excellent |
| 85-95% | Good |
| 70-85% | Needs attention |
| < 70% | Critical — DSM intervention required |

The 1 failed store needs follow-up:
- Was it a new clerk who didn't know the planogram?
- Did the franchise operator intentionally move products?
- Is there a shelf space constraint (new product added, old one removed)?

> **Why this matters for our project:** Planogram data tells us **which SKUs have designated shelf space**. If our engine recommends a SKU that doesn't fit the planogram, the recommendation will be rejected. We need to work within planogram constraints or recommend planogram changes.

---

### Out-of-Stock (OOS) Reporting

**OOS reported: Lay's Classic 10oz — 2 stores**

This is arguably the most critical operational metric in CPG. An out-of-stock event means:

- A consumer walks in, wants Lay's Classic chips, doesn't find them
- They either buy a **competitor product** (Pringles Original) or **walk away**
- **The sale is lost permanently** — they won't come back tomorrow for Lay's
- Frito-Lay loses revenue, the franchise operator loses margin, and the consumer is dissatisfied

**Types of OOS causes:**

| Cause | Example | Fix |
|-------|---------|-----|
| **Demand spike** | UT football game week, unexpected popularity | Better demand forecasting |
| **Supply failure** | Frito-Lay DC ran out of stock | Inventory management |
| **Ordering gap** | Franchise operator forgot to reorder | Mike should have flagged earlier |
| **Display issue** | Product is in back storage, not on shelf | Planogram compliance |

**OOS rate = Stores with OOS for a SKU / Total stores carrying that SKU**

If Lay's Classic 10oz is carried by 35 of Mike's 45 stores and 2 report OOS:
**OOS rate = 2/35 = 5.7%**

Industry norms: **<5% OOS** is the target. Anything above 8% needs immediate attention.

> **Why this matters for our project:** OOS data is a strong signal for our recommendation engine. If a SKU frequently goes out of stock, it indicates **high demand** — we should be recommending it to similar stores that don't carry it yet. Conversely, if a SKU is always in stock but never sells, it's a **zombie SKU** — we should NOT be recommending it.

---

### Visibility Materials

**Visibility placements: 3 (end-cap display for Doritos, clip strip for Cheetos, cooler placement for Propel)**

In a 2,500 sq ft 7-Eleven with 1,500+ products packed into limited space, **visibility is everything**. Companies pay for premium placement through:

| Material | What It Is | Typical Cost |
|----------|-----------|--------------|
| **End-cap display** | Display at the end of an aisle — high visibility | $25-50 per store per week |
| **Clip strip** | Hanging strip with product clips, placed near checkout | $5-15 |
| **Counter display** | Small stand on the checkout counter with product samples | $5-25 |
| **Cooler placement** | Product placed in refrigerated cooler (for beverages) | $10-30 |
| **Hanging sign** | Sign hanging from the ceiling or near the store entrance | $2-8 |
| **Floor stand/Rack** | Branded product holder (e.g., Frito-Lay clip strip or end-cap display) | $15-50 |

Field merchandisers are responsible for placing and maintaining these materials. The placement is tracked because:
- It drives **impulse purchases** (seeing Cheetos at the checkout counter → buying it)
- It reinforces **brand recall** in the store
- It's a measurable output for the sales team

---

### Returns

**Returns collected: $85 (damaged Tostitos bags, expired Funyuns)**

Returns happen when:
- Products are **damaged** (crushed, torn packaging, moisture damage)
- Products are **expired** (past best-by date)
- Products are **unsold within agreed terms** (rare, but happens with seasonal or promotional items)

Frito-Lay absorbs most returns as a cost of doing DSD. High returns from a store indicate:
- Poor storage conditions at the store
- Over-ordering (franchise operator ordering too much)
- Low sell-through (wrong products for that store's consumers)

> **Why this matters for our project:** Returns data tells us when recommendations were wrong. If we recommend a premium SKU to a store whose customers prefer value packs, it'll end up as a return. Our engine needs to match **SKU profile to store profile**.

---

## A Day in the Life: Good vs. Average vs. Poor

Let's put it all together with benchmarks for small-format chains:

| Metric | Poor Day | Average Day | Good Day | Mike Today |
|--------|----------|-------------|----------|------------|
| Coverage rate | < 75% | 75-85% | > 85% | **100%** |
| Productive call rate | < 50% | 50-70% | > 70% | **88.9%** |
| Order value | < $2,000 | $2,000-3,500 | > $3,500 | **$4,250** |
| Order lines | < 12 | 12-24 | > 24 | **28** |
| Planogram compliance | < 70% | 70-85% | > 85% | **88.9%** |
| OOS stores | > 5 | 2-5 | 0-1 | **2** |
| Visibility placements | 0-1 | 2 | 3+ | **3** |
| Returns | > $300 | $100-300 | < $100 | **$85** |

**Verdict:** Mike had an **excellent day** — perfect coverage, high productivity, strong order value, good planogram compliance, and excellent visibility execution. The Lay's Classic OOS across 2 stores is a minor concern worth flagging, and returns are well within acceptable range.

---

## The Data Trail

Every action Mike takes generates a data record. Here's what flows into the company's systems:

| Mike's Action | Data Generated | Table It Lands In |
|--------------|---------------|-------------------|
| Visits a store | Store ID, timestamp, GPS coordinates | `store_visits` |
| Reviews POS data | Store ID, SKU, units sold, timestamp | `pos_transactions` |
| Places an order | Order ID, store, SKU, quantity, value | `orders` |
| Checks planogram | Store ID, compliance status, notes | `planogram_compliance` |
| Reports OOS | Store, SKU, date | `oos_reports` |
| Places visibility | Store, material type, brand, date | `visibility_log` |
| Collects return | Store, SKU, quantity, reason | `returns` |
| Collects payment | Store, amount, mode (ACH/check/card) | `payments` |

> **This is the data our recommendation engine will consume.** The `pos_transactions` table is the primary input — it tells us what consumers actually buy at each store, when they buy it, and in what combinations. Combined with `oos_reports` and `planogram_compliance`, we can distinguish between "store doesn't stock this SKU" and "store stocks it but ran out."

**Want to see what this data actually looks like?** Open the sample CSV files in the [`sample-data/`](sample-data/) folder. Each file contains a few rows of realistic data from Mike's Monday and Tuesday visits — with real SKU names, prices, GPS coordinates, and rep notes. Open them in Excel and explore before moving on.

---

## Key Terms Glossary

| Term | Definition |
|------|-----------|
| **Field merchandiser** | Route sales rep who services chain stores, checks planograms, makes recommendations |
| **Route plan** | Geographic division of territory into daily routes for field merchandisers |
| **Fixed route schedule** | Formalized, company-approved route and visit schedule |
| **Productive call** | Store visit resulting in at least one business outcome (order, payment, display, compliance check) |
| **Order lines** | Number of distinct SKU-quantity combinations in an order |
| **AOV** | Average Order Value — total order value divided by number of orders |
| **OOS** | Out of Stock — product unavailable on shelf when consumer wants it |
| **Planogram** | Visual diagram showing exactly where each product goes on shelves |
| **Visibility materials** | In-store promotional items (end-cap displays, clip strips, counter displays, cooler placements) |
| **Coverage rate** | Percentage of planned stores actually visited |
| **Sell-through** | Rate at which stocked inventory is sold to consumers |
| **POS data** | Point-of-sale scan data from checkout systems |
| **DSD** | Direct Store Delivery — manufacturer delivers directly to store |

---

## Check Your Understanding

1. **Mike visited 9 stores but only 8 were productive calls. List three possible reasons why 1 visit was non-productive.**

2. **Why is "average order value per productive call" a better metric than "total order value" for evaluating a field merchandiser?**

3. **Lay's Classic 10oz is out of stock in 2 of Mike's 7-Eleven stores. As a data analyst, what two data points would you check before deciding if this is a supply problem or a demand problem?**

4. **A store has high order value but low order lines. What does this pattern suggest? Is this store a good candidate for SKU recommendations?**

5. **Calculate:** If Mike's 45 stores average $550 per productive call and his productive call rate is 85%, what's his estimated monthly order value? (Assume 5 working days/week, 4 weeks/month, 9 stores/day)

---

## What's Next

In the next scenario, we'll tackle the **three-tier retail landscape** — understanding why small-format chains (7-Eleven, Circle K, Dollar General) are the sweet spot for our recommendation engine, compared to independent retailers and large-format chains.
