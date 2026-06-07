# Scenario 3: Large-Format Chains vs Small-Format Chains vs Independent Retailers

## Context

Your manager walks you to the office whiteboard and draws three boxes:

> "On the left — **Walmart Supercenter, South Lamar, Austin**. In the middle — **7-Eleven #38472, Guadalupe Street near UT campus**. On the right — **Tony's Corner Market**, an independent grocery store. All three sell Frito-Lay snacks. But the way we sell to them, the margins we earn, the data we get, and the recommendations we can make — completely different across all three. You need to understand this split before you touch a single row of data."

This is the **three-tier retail divide** — and our recommendation engine targets the **sweet spot in the middle**: small-format chain stores.

---

## The Three Worlds of US Retail

### Independent Retailers — Local Stores

| Attribute | Typical Value |
|-----------|--------------|
| **Store size** | 1,000–5,000 sq ft |
| **Ownership** | Family-owned, single proprietor or small partnership |
| **Staff** | Owner + 1-5 employees |
| **SKUs stocked** | 2,000–8,000 across all categories |
| **Monthly turnover** | $20,000–$150,000 |
| **How they buy** | From distributor's sales rep (weekly visits) |
| **Payment terms** | 7–30 days credit from distributor |
| **Pricing** | Mostly at MSRP or close to it |
| **Consumer relationship** | Personal — knows regulars by name, community hub |
| **Store count (US)** | ~2.5 million |
| **Data availability** | Poor — paper invoices, manual entry |

**How independent store buying works:**
1. Mike (sales rep) visits Tony's Corner Market on Monday
2. The owner, Tony, checks what's running low on his shelves
3. Mike suggests: "Doritos Cool Ranch is selling well this season, want to add 2 cases?"
4. Tony agrees — Mike logs the order on his handheld device
5. The distributor delivers the order next day
6. Tony pays the distributor within 7-14 days

The decision-maker is **one person (the owner)**, decisions are made **at the store**, and the sales rep has **direct influence** over what gets ordered.

**Why we're NOT targeting independent retailers for this project:**
- No POS data (we don't know what consumers buy, only what stores order)
- No real-time inventory (we know what was ordered, not what's on shelf today)
- No consumer demographics (we can only infer from store location and behavior)
- No loyalty program data
- Manual, paper-based operations limit data science techniques we can teach

---

### Small-Format Chains — Franchised Convenience Stores (OUR TARGET)

| Attribute | Typical Value |
|-----------|--------------|
| **Store size** | 2,500–3,500 sq ft |
| **Ownership** | Franchise operator (individual owner running branded store) |
| **Staff** | 5-15 employees per store |
| **SKUs stocked** | 1,500–3,000 across all categories; 50–150 snack SKUs |
| **Monthly turnover** | $150,000–$500,000 |
| **How they buy** | Hybrid: HQ sets assortment guidelines, franchisee has some autonomy |
| **Payment terms** | 15–45 days |
| **Pricing** | At or slightly below MSRP |
| **Consumer relationship** | Loyalty program (7-Eleven Rewards, Circle K Easy Rewards) |
| **Store count (US)** | ~80,000+ (7-Eleven alone: 13,000+; Dollar General: 19,000+; Circle K: 7,000+) |
| **Data availability** | Rich — POS scan data, loyalty data, real-time inventory |

**How small-format chain buying works:**
1. Frito-Lay's **Category Manager** meets 7-Eleven's HQ category management team in Irving, Texas
2. They negotiate: national assortment guidelines, promotional calendars, slotting fees for new products
3. HQ sets **assortment plans** per store cluster (e.g., "college neighborhood stores", "corporate office park stores")
4. **Field merchandiser** (Mike) visits store weekly, reviews POS data on handheld device, checks planogram compliance
5. Mike recommends adjustments: "Store #38472 near UT campus should add Doritos Flamin' Hot Limon — peer stores sell 15 units/week"
6. Franchise operator approves; order is placed automatically through the chain's system
7. Frito-Lay delivers via **Direct Store Delivery (DSD)** — truck arrives next morning

**The decision-maker is hybrid:**
- **HQ category managers** set broad assortment guidelines per store cluster
- **Franchise operators** have autonomy to add/remove 10-20% of SKUs based on local demand
- **Field merchandisers** influence decisions with data-backed recommendations

**Why we're targeting small-format chains:**
- **POS scan data** — every item scanned at checkout, timestamped
- **Loyalty/rewards program data** — 7-Eleven Rewards, Circle K Easy Rewards
- **Planogram compliance data** — shelf layout, product placement
- **Real-time inventory levels** per store per SKU
- **Store demographic profiles** — foot traffic, neighborhood income, proximity to schools/offices
- **Franchise autonomy** — field recommendations still matter and can be acted upon
- **Massive scale** — 80,000+ stores means recommendations create enormous revenue impact
- **Small format** — 2,500-3,500 sq ft means assortment curation is critical (can't stock everything)

---

### Large-Format Chains — Organized Retail

| Attribute | Typical Value |
|-----------|--------------|
| **Store size** | 30,000–200,000 sq ft |
| **Ownership** | Corporate chain (Walmart, Target, Kroger, CVS, Walgreens) |
| **Staff** | 50–500 employees per store |
| **SKUs stocked** | 30,000–150,000 across all categories |
| **Monthly turnover** | $1–$25 million |
| **How they buy** | Central buying team negotiates directly with manufacturer |
| **Payment terms** | 30–90 days, sometimes longer |
| **Pricing** | Below MSRP (negotiated discounts of 20–35%) |
| **Consumer relationship** | Transactional — loyalty cards, app-based offers |
| **Store count (US)** | ~150,000 |
| **Data availability** | Excellent — POS, loyalty, planogram, real-time inventory |

**How large-format chain buying works:**
1. Frito-Lay's **Key Account Manager (KAM)** meets Walmart's central buying team in Bentonville, Arkansas
2. They negotiate: slotting fees, shelf space, promotional calendars, discount structures
3. Decisions are made **centrally** — the Austin Walmart store manager has limited say
4. Orders are generated **automatically** based on POS data and reorder algorithms
5. No sales rep visits the store to suggest products — it's all system-driven

The decision-maker is a **corporate buying team**, decisions are made **centrally**, and the sales rep has **zero influence** at the store level.

**Why we're NOT targeting large-format chains:**
- No field rep influence — algorithms and buying teams decide everything
- Assortment is less critical — 150,000 sq ft stores can stock 80-150 SKUs per company
- Already have internal analytics teams and recommendation systems
- Central decision-making means store-level recommendations don't work

---

## Side-by-Side Comparison

| Dimension | Independent Retailers | Small-Format Chains (Our Target) | Large-Format Chains |
|-----------|----------------------|----------------------------------|---------------------|
| **Who decides what to stock?** | Store owner (1 person) | HQ + Franchise operator (hybrid) | Central buying team |
| **How are orders placed?** | Sales rep takes order during visit | Auto-replenishment + field rep recommendations | Auto-replenishment from POS data |
| **Store format** | 1,000–5,000 sq ft | 2,500–3,500 sq ft | 30,000–200,000 sq ft |
| **SKUs stocked (snacks)** | 15–50 | 50–150 | 80–150 |
| **Margins for the company** | Higher (less discount) | Medium (10-20% discount) | Lower (deep discounts 20-35%) |
| **Data availability** | Poor — paper invoices, manual entry | Rich — POS scans, loyalty data, real-time | Excellent — full digital ecosystem |
| **Recommendation influence** | High — sales rep pitches to owner | Medium-High — field merchandiser + data | Low — algorithms and buying teams decide |
| **Payment cycle** | 7–30 days | 15–45 days | 30–90 days |
| **Consumer pricing** | At or near MSRP | At or slightly below MSRP | Below MSRP (discounted) |
| **Growth rate** | Flat (~1-2% annually) | Growing (~3-5% annually) | Growing (~5-8% annually) |
| **Distribution method** | Distributor | Direct Store Delivery (DSD) | DC + truck |

---

## Why Our Recommendation Engine Targets Small-Format Chains

This is a critical architectural decision, and it's worth understanding deeply:

### 1. Small-format chains have the "Goldilocks zone" of data availability

| Data Source | Independent | Small-Format Chain | Large-Format Chain |
|------------|-------------|-------------------|-------------------|
| **POS scan data** | No | Yes — real-time | Yes — real-time |
| **Loyalty program** | No | Yes — 7-Eleven Rewards | Yes — Walmart+ |
| **Planogram data** | No | Yes — digitally managed | Yes — digitally managed |
| **Real-time inventory** | No | Yes — automated | Yes — automated |
| **Store demographics** | Inferred | Yes — HQ-provided | Yes — internal |
| **Field rep influence** | Yes | Yes — field merchandiser | No |

Small-format chains have **rich enough data** to teach advanced data science techniques, but **still have human decision-makers** who can act on recommendations.

### 2. Small format = assortment curation matters

A 7-Eleven has 2,500-3,500 sq ft and can stock 50-150 snack SKUs from any single company. But Frito-Lay may have 200+ SKUs in their portfolio. The question **"which 50-150 should THIS specific store carry?"** is exactly what our recommendation engine answers.

A Walmart Supercenter has 180,000 sq ft and can stock everything — the assortment question is less critical.

### 3. Franchise operators have autonomy

Unlike corporate large-format chains where everything is centralized, 7-Eleven franchise operators can adjust 10-20% of their assortment based on local demand. This means:
- Field merchandisers can influence decisions
- Store-level recommendations can be acted upon
- A/B testing recommendations is feasible

### 4. Direct Store Delivery (DSD) = faster feedback loops

Frito-Lay is one of the largest DSD operators in the US — they deliver directly to stores, bypassing distributors. This means:
- Mike (field merchandiser) visits stores weekly
- He sees the shelf, checks planogram compliance, reviews POS data on his handheld
- He can immediately act on recommendations ("add 2 cases of Doritos Flamin' Hot Limon")
- Results are visible in next week's POS data

### 5. Massive scale — 80,000+ stores

Even though small-format chains are fewer than independent stores (80,000 vs 2.5 million), they still represent enormous scale:
- 7-Eleven alone: 13,000+ US stores
- Dollar General: 19,000+ stores
- Circle K: 7,000+ stores
- Wawa, Sheetz, Casey's, Kum & Go: thousands more

A 1% improvement in SKU-store matching across 80,000 stores creates enormous revenue impact.

---

## The Data Reality: What We Have vs. What We Don't

This difference in data availability directly shapes our engine's design:

### Small-Format Chain Data (What We'll Work With)

| Data Source | What It Contains | Quality |
|------------|-----------------|---------|
| **POS system** | Every item scanned at checkout, timestamped, SKU-level | Excellent — real-time |
| **Loyalty program** | Consumer-level purchase history, visit frequency | Excellent — linked to individual |
| **Planogram system** | Shelf layout, product placement, facing count | Excellent — digitally managed |
| **Inventory system** | Real-time stock levels per store per SKU | Excellent — automated |
| **Store master** | Store ID, format, cluster, franchise operator, address | Excellent — HQ-maintained |
| **SKU master** | Product ID, name, category, MSRP, pack size, planogram slot | Excellent — company-maintained |
| **Field merchandiser app** | Store visits, planogram compliance checks, recommendations made | Good — depends on compliance |

**What's still limited:**
- Franchise operator autonomy means recommendations can be rejected
- Not all chains have equally mature data systems
- Some data may be siloed at HQ level

> The advantage: **Our engine can teach advanced data science techniques** — market basket analysis, customer segmentation, time-series forecasting, A/B testing — because we have POS data, loyalty data, and real-time inventory. This is impossible with independent retailer data.

---

## A Quick Look at Emerging Channels

The three-tier retail landscape is evolving. New channels are emerging that blend characteristics:

| Channel | Example | Characteristics |
|---------|---------|-----------------|
| **E-commerce** | Amazon, Walmart.com, Instacart | Chain-like (central, data-rich) |
| **Quick commerce** | GoPuff, DoorDash DashMart | Small-format + data-rich (dark stores) |
| **Wholesale clubs** | Costco, Sam's Club, BJ's | Large-format, membership-based |
| **B2B ordering platforms** | Faire, Provi, Handshake | Independent-like (small stores ordering via app) |

**Quick commerce (GoPuff, DashMart) is particularly interesting:**
- Small-format dark stores (~5,000 sq ft)
- Extremely data-rich (digital-first, every click tracked)
- Central decision-making (like large chains)
- May be a future target for recommendation engines

For our project, we stay focused on **traditional small-format chains serviced by field merchandisers** — 7-Eleven, Circle K, Dollar General, Wawa franchises.

---

## Key Terms Glossary

| Term | Definition |
|------|-----------|
| **Independent retailers** | Traditionally owned retail — local grocery stores, convenience stores, corner markets |
| **Small-format chains** | Franchised convenience chains — 7-Eleven, Circle K, Dollar General, Wawa |
| **Large-format chains** | Organized retail chains — Walmart, Target, Kroger, CVS, Walgreens |
| **Direct Store Delivery (DSD)** | Manufacturer delivers directly to store, bypassing distributors |
| **Field merchandiser** | Route sales rep who services chain stores, checks planograms, makes recommendations |
| **Category manager** | HQ role that sets assortment guidelines per store cluster |
| **Franchise operator** | Individual owner who runs a branded chain location |
| **Assortment plan** | The curated list of SKUs assigned to a specific store or store cluster |
| **Planogram** | A visual diagram of how products should be arranged on shelves |
| **POS (Point of Sale)** | The checkout system in a store that records every transaction |
| **Slotting fee** | Fee a company pays to a chain retailer to get their product placed on shelves |
| **Key Account Manager (KAM)** | Senior sales role managing the company's relationship with a large-format chain |

---

## Check Your Understanding

1. **Frito-Lay sells Doritos to 7-Eleven at a 15% discount off MSRP, to Walmart at a 30% discount, and to independent stores at MSRP. Which channel gives Frito-Lay the highest margins? So why does Frito-Lay still sell through Walmart?**

2. **A 7-Eleven franchise operator near UT Austin says: "I only have space for 80 snack SKUs but Frito-Lay makes 200+. Tell me which 80 to keep." Rephrase this as the data science problem our recommendation engine solves.**

3. **Why does the hybrid decision-making structure (HQ + franchise operator) make small-format chains the "sweet spot" for our recommendation engine?**

4. **Small-format chain data comes from POS systems — we see every consumer purchase, timestamped. How does this enable data science techniques that are impossible with independent retailer data? Name two techniques.**

5. **Quick commerce platforms (GoPuff, DashMart) have small stores and rich data. Would our recommendation engine work for them? What would need to change?**

---

## What's Next

In the next scenario, we'll get into the **metrics that actually quantify distribution effectiveness** — Numeric Distribution vs. Weighted Distribution. You'll learn why a product "available in 500 stores" doesn't mean the same thing as a product "available in 500 of the right stores."
