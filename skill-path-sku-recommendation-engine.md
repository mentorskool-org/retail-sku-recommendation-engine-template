# Skill Path: Retail SKU Recommendation Engine

## Skill Path Overview

**Name:** Retail SKU Recommendation Engine
**Domain:** Consumer Packaged Goods (CPG) & Retail Analytics
**Total Duration:** 8 Weeks (~120 hours)
**Target Audience:** Aspiring Data Analysts/Scientists looking to build production-ready recommendation systems with strong domain context

**What You'll Build:** An end-to-end SKU recommendation engine that helps sales representatives identify which products to pitch to retail stores, based on store clustering, SKU profiling, and peer-based recommendations.

---

## Skill Path Structure

| Position | Content Name | Content Type | Duration |
|----------|-------------|--------------|----------|
| 1 | CPG Distribution & Retail Operations | MASTERCLASS | 4h 0m |
| 2 | Understanding CPG Distribution - Hands On | SCENARIO | 2h 30m |
| 3 | SKU Profiling & Performance Analytics | MASTERCLASS | 3h 30m |
| 4 | SKU Performance Analysis - Hands On | SCENARIO | 3h 0m |
| 5 | Store Clustering Fundamentals | MASTERCLASS | 3h 0m |
| 6 | Manual Clustering & Recommendation Logic - Hands On | SCENARIO | 3h 30m |
| 7 | Data Quality & Validation in Analytics | MASTERCLASS | 2h 30m |
| 8 | Data Quality Assessment - Hands On | SCENARIO | 2h 30m |
| 9 | SQL for Retail Analytics | MASTERCLASS | 4h 0m |
| 10 | SQL Analytics Pipeline - Hands On | SCENARIO | 4h 0m |
| 11 | Python Data Engineering for Recommendations | MASTERCLASS | 3h 30m |
| 12 | Python Data Pipeline - Hands On | SCENARIO | 4h 0m |
| 13 | Machine Learning: K-Means Clustering | MASTERCLASS | 3h 30m |
| 14 | Store Clustering Implementation - Hands On | SCENARIO | 4h 0m |
| 15 | Business Rules & Optimization Logic | MASTERCLASS | 2h 30m |
| 16 | Recommendation Optimization - Hands On | SCENARIO | 3h 0m |
| 17 | Scalable Pipelines with Databricks | MASTERCLASS | 3h 0m |
| 18 | Databricks Pipeline Implementation - Hands On | SCENARIO | 3h 30m |
| 19 | Compliance Dashboards with Power BI | MASTERCLASS | 3h 0m |
| 20 | Power BI Dashboard - Hands On | SCENARIO | 3h 30m |
| 21 | Building User Interfaces with Streamlit | MASTERCLASS | 3h 0m |
| 22 | Streamlit Application - Hands On | SCENARIO | 4h 0m |
| 23 | Technical Communication & Documentation | MASTERCLASS | 2h 30m |
| 24 | Portfolio Preparation - Hands On | SCENARIO | 3h 0m |
| 25 | Mini Project: Store Segmentation Analysis | PROJECT | 8h 0m |
| 26 | Mini Project: SKU Portfolio Optimization | PROJECT | 8h 0m |
| 27 | Capstone: End-to-End Recommendation System (Optional) | PROJECT | 16h 0m |

---

## Detailed Content Specifications

---

### Position 1: CPG Distribution & Retail Operations

**Content Type:** MASTERCLASS

**Overview:**
This foundational masterclass introduces the Consumer Packaged Goods (CPG) industry's distribution ecosystem. Learners will understand how products move from factories to consumer hands through multiple intermediaries, and why distribution reach often matters more than advertising. The module covers the critical distinction between Modern Trade and General Trade channels, sales representative workflows, and the metrics that drive retail execution success.

**Pre-requisites:**
- Basic business understanding
- Familiarity with Excel for viewing data
- No prior retail/CPG knowledge required

**Learning Objectives:**
1. Explain the complete CPG value chain from manufacturer to consumer, including roles of C&F agents, distributors, and retailers
2. Differentiate between Modern Trade (MT) and General Trade (GT) channels and their respective business dynamics
3. Interpret a sales representative's daily report including productive calls, order value, and OOS metrics
4. Understand beat plans, Permanent Journey Plans (PJP), and sales coverage strategies
5. Calculate key distribution metrics: Numeric Distribution vs Weighted Distribution

**Duration:** 4h 0m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Journey of a Product: Factory to Consumer |
| 2 | Decoding a Sales Rep's Daily Report |
| 3 | Modern Trade vs General Trade Dynamics |
| 4 | Distribution Metrics That Matter |

---

### Position 2: Understanding CPG Distribution - Hands On

**Content Type:** SCENARIO

**Overview:**
Apply your understanding of CPG distribution by mapping the journey of a Dove shampoo bottle from factory to consumer, analyzing a real sales representative's daily report, and calculating distribution metrics for a set of retail outlets. This scenario bridges theoretical knowledge with practical retail operations.

**Pre-requisites:**
- Completed: CPG Distribution & Retail Operations (Position 1)
- Excel proficiency: basic formulas, charting

**Learning Objectives:**
1. Create a visual flowchart showing the complete distribution journey with margin analysis at each node
2. Calculate productive call rate, average order value, and OOS rate from sales data
3. Analyze the relationship between SKU count and sales performance across stores
4. Profile store characteristics and recommend visit frequencies based on sales potential

**Duration:** 2h 30m

**Mapped Scenarios:** 1, 2, 3

---

### Position 3: SKU Profiling & Performance Analytics

**Content Type:** MASTERCLASS

**Overview:**
This masterclass dives deep into SKU-level analytics - the heart of any retail recommendation system. Learners will understand how to classify products into performance tiers (heroes vs zombies), calculate composite scores using multiple KPIs, and identify seasonality patterns that affect recommendation accuracy. The module establishes the analytical foundation for data-driven assortment decisions.

**Pre-requisites:**
- Completed: CPG Distribution & Retail Operations (Position 1)
- Basic statistics: percentiles, averages
- Excel: PERCENTRANK, AVERAGE, charting functions

**Learning Objectives:**
1. Perform Pareto analysis to identify hero SKUs that drive 80% of revenue
2. Calculate the 3-KPI composite score: price-to-units ratio, store presence, and sales rank
3. Assign SKU tiers (L1-L4) using percentile-based classification
4. Detect and quantify seasonality patterns using seasonal indices
5. Explain why premium SKUs may require selective vs ubiquitous distribution

**Duration:** 3h 30m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Pareto Analysis: Heroes vs Zombies |
| 2 | The 3-KPI Composite Scoring Method |
| 3 | Distribution Strategy by SKU Type |
| 4 | Seasonality in CPG Sales |

---

### Position 4: SKU Performance Analysis - Hands On

**Content Type:** SCENARIO

**Overview:**
Work with real SKU sales data to classify products into performance tiers, build composite scoring models, and investigate anomalies like high-performing SKUs with low store presence. This hands-on scenario transforms you from a passive analyst to someone who can make data-driven SKU assortment recommendations.

**Pre-requisites:**
- Completed: SKU Profiling & Performance Analytics (Position 3)
- Excel: Pareto charts, percentile calculations, conditional formatting

**Learning Objectives:**
1. Build a Pareto chart and classify 50+ SKUs into Hero, Core, Tail, and Zombie categories
2. Create a composite scoring model combining three normalized KPIs
3. Investigate and explain counterintuitive tier assignments (e.g., premium SKU in L2 with low presence)
4. Calculate seasonal indices and propose de-seasonalization strategy for the recommendation engine

**Duration:** 3h 0m

**Mapped Scenarios:** 5, 6, 7, 8

---

### Position 5: Store Clustering Fundamentals

**Content Type:** MASTERCLASS

**Overview:**
Before implementing K-Means in Python, this masterclass ensures learners deeply understand clustering logic by working through it manually. Learners will grasp why standardization matters, how distance-based grouping works, and what makes clusters meaningful for business decisions. The module also covers the critical cold-start problem for new stores.

**Pre-requisites:**
- Completed: SKU Performance Analysis (Position 4)
- Basic understanding of Euclidean distance
- Excel: scatter plots, IF statements

**Learning Objectives:**
1. Explain why stores are clustered using Total Sales, Total Units, and Distinct SKUs
2. Apply min-max normalization to make KPIs comparable
3. Manually perform K-Means iterations: assignment and centroid update
4. Calculate Euclidean distance to assign new stores to clusters
5. Design a cold-start recommendation approach for stores with no history

**Duration:** 3h 0m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Why We Cluster Stores |
| 2 | Standardization: Making KPIs Comparable |
| 3 | Distance-Based Grouping Intuition |
| 4 | The Cold Start Problem |

---

### Position 6: Manual Clustering & Recommendation Logic - Hands On

**Content Type:** SCENARIO

**Overview:**
Build the store clustering logic manually in Excel for 100 stores, calculate cluster assignments using Euclidean distance, and generate SKU recommendations for individual stores using the matrix logic. This foundational exercise ensures you understand every step before automating it in Python.

**Pre-requisites:**
- Completed: Store Clustering Fundamentals (Position 5)
- Excel: SQRT, SUMPRODUCT, VLOOKUP, COUNTIFS

**Learning Objectives:**
1. Standardize 3 KPIs using min-max normalization and visualize in scatter plots
2. Perform 3 iterations of manual K-Means and compare to algorithm output
3. Calculate Euclidean distance to assign a new store to the correct cluster
4. Generate top-10 SKU recommendations for a specific store using peer-based logic
5. Design and document a cold-start recommendation fallback for new stores

**Duration:** 3h 30m

**Mapped Scenarios:** 9, 10, 11, 12

---

### Position 7: Data Quality & Validation in Analytics

**Content Type:** MASTERCLASS

**Overview:**
Production analytics pipelines live or die based on data quality. This masterclass covers the critical skills of outlier detection, data reconciliation across sources, and output validation. Learners will understand why a 10x outlier can ruin clustering results and how to build trust in analytical outputs through systematic validation.

**Pre-requisites:**
- Completed: Manual Clustering & Recommendation Logic (Position 6)
- Excel: QUARTILE, IF statements
- Basic statistics: IQR, percentiles

**Learning Objectives:**
1. Detect statistical outliers using the IQR method and business-driven rules
2. Differentiate between data errors, bulk purchases, and legitimate outliers
3. Reconcile mismatched identifiers across data sources using fuzzy matching
4. Design validation checks to ensure SKU tiers are correctly calculated
5. Create an outlier handling documentation for production pipelines

**Duration:** 2h 30m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Outlier Detection Methods |
| 2 | Business Context of Outliers |
| 3 | Data Reconciliation Across Sources |
| 4 | Output Validation Frameworks |

---

### Position 8: Data Quality Assessment - Hands On

**Content Type:** SCENARIO

**Overview:**
Apply data quality techniques to real retail data: identify bulk purchase outliers that would skew clustering, reconcile store codes across three different source systems, and validate that your SKU tier assignments pass the business "smell test." This scenario builds the defensive skills every production data engineer needs.

**Pre-requisites:**
- Completed: Data Quality & Validation in Analytics (Position 7)
- Excel: QUARTILE, VLOOKUP, approximate matching

**Learning Objectives:**
1. Identify and document top 10 outliers in store sales data with business explanations
2. Create business rules for outlier treatment (exclude vs cap vs flag)
3. Reconcile 3 data sources with different store identifiers achieving >95% match rate
4. Validate SKU tier assignments by sampling and investigating surprising assignments
5. Calculate tier stability metrics across monthly snapshots

**Duration:** 2h 30m

**Mapped Scenarios:** 13, 14, 15

---

### Position 9: SQL for Retail Analytics

**Content Type:** MASTERCLASS

**Overview:**
Move from Excel to enterprise databases. This masterclass covers SQL aggregations for creating store KPI summaries from transactional data, star schema navigation for joining sales with dimensions, and window functions for advanced ranking within groups. These skills enable you to work with millions of records efficiently.

**Pre-requisites:**
- Basic SQL: SELECT, WHERE, GROUP BY
- Understanding of relational databases
- Completed: Data Quality Assessment (Position 8)

**Learning Objectives:**
1. Write aggregation queries to create store KPI summaries from 50M+ transaction records
2. Navigate star schema joins: fact tables (sales) with dimensions (store, product, geography)
3. Apply window functions (RANK, NTILE, PARTITION BY) for within-group rankings
4. Design snapshot tables for tracking cluster changes over time
5. Optimize queries for performance using appropriate indexing strategies

**Duration:** 4h 0m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Transactional to Analytical: Aggregation Patterns |
| 2 | Star Schema Navigation |
| 3 | Window Functions for Ranking |
| 4 | Snapshot Tables and Change Tracking |

---

### Position 10: SQL Analytics Pipeline - Hands On

**Content Type:** SCENARIO

**Overview:**
Build the complete SQL layer of the recommendation engine: extract store KPIs from transactional data, join with geographic hierarchies, add within-region rankings, and create monthly snapshots for tracking cluster migrations. By the end, you'll have a production-ready SQL pipeline.

**Pre-requisites:**
- Completed: SQL for Retail Analytics (Position 9)
- Access to SQL environment (SQL Server, PostgreSQL, or cloud)

**Learning Objectives:**
1. Write and optimize a 6-month store KPI aggregation query with outlier exclusions
2. Create a multi-table join query linking sales → stores → geography → targets
3. Add regional rankings using RANK, DENSE_RANK, and NTILE window functions
4. Implement a monthly snapshot table with change detection logic
5. Validate SQL outputs against Excel calculations for accuracy

**Duration:** 4h 0m

**Mapped Scenarios:** 16, 17, 18, 19

---

### Position 11: Python Data Engineering for Recommendations

**Content Type:** MASTERCLASS

**Overview:**
Transition from SQL to Python for more flexible data transformations. This masterclass covers Pandas for data wrangling, scikit-learn for feature scaling, and building reproducible data pipelines. Learners will understand when to use Python vs SQL and how to create analysis-ready datasets.

**Pre-requisites:**
- Python basics: variables, functions, control flow
- Completed: SQL Analytics Pipeline (Position 10)
- Jupyter notebook familiarity

**Learning Objectives:**
1. Load, clean, and join multiple data sources using Pandas DataFrames
2. Apply MinMaxScaler and StandardScaler for feature normalization
3. Calculate percentile-based composite scores for SKU profiling
4. Build reusable functions for data preparation and validation
5. Save trained scalers for consistent scoring of new data

**Duration:** 3h 30m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Pandas Data Wrangling Patterns |
| 2 | Feature Engineering for ML |
| 3 | Standardization: Fit vs Transform |
| 4 | Building Reproducible Pipelines |

---

### Position 12: Python Data Pipeline - Hands On

**Content Type:** SCENARIO

**Overview:**
Build a complete Python data preparation pipeline: load 5 CSV files, validate and clean data, calculate store KPIs with proper scaling, and implement SKU profiling with tier assignment. This Jupyter notebook becomes the foundation of your recommendation engine.

**Pre-requisites:**
- Completed: Python Data Engineering for Recommendations (Position 11)
- Python packages: pandas, numpy, sklearn, scipy

**Learning Objectives:**
1. Create a Jupyter notebook that loads, validates, and joins 5 data sources
2. Implement store KPI calculation with MinMax scaling and scaler persistence
3. Build a `profile_skus()` function that calculates composite scores and assigns L1-L4 tiers
4. Validate that tier distribution is approximately 25% per quartile
5. Document the pipeline with markdown explanations for each transformation

**Duration:** 4h 0m

**Mapped Scenarios:** 20, 21, 22

---

### Position 13: Machine Learning: K-Means Clustering

**Content Type:** MASTERCLASS

**Overview:**
Implement production-grade K-Means clustering for store segmentation. This masterclass covers the algorithm mechanics, hyperparameter tuning using elbow and silhouette methods, and visualization techniques using PCA. Learners will understand how to balance statistical optimality with business practicality.

**Pre-requisites:**
- Completed: Python Data Pipeline (Position 12)
- Basic understanding of clustering concepts (from Position 5)
- Python: matplotlib, seaborn for visualization

**Learning Objectives:**
1. Implement K-Means clustering using sklearn with proper initialization (k-means++)
2. Determine optimal k using elbow method and silhouette score analysis
3. Profile and name clusters based on centroid characteristics
4. Visualize clusters in 2D using PCA dimensionality reduction
5. Identify and handle outlier stores that don't fit any cluster well

**Duration:** 3h 30m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | K-Means Algorithm Deep Dive |
| 2 | Choosing the Right Number of Clusters |
| 3 | Cluster Profiling and Naming |
| 4 | Visualization with PCA |

---

### Position 14: Store Clustering Implementation - Hands On

**Content Type:** SCENARIO

**Overview:**
Implement the complete store clustering module: fit K-Means on 8,000 stores, determine optimal k through systematic evaluation, profile each cluster with business-meaningful names, and create executive-ready visualizations. This is the ML core of your recommendation engine.

**Pre-requisites:**
- Completed: Machine Learning: K-Means Clustering (Position 13)
- Prepared store KPI dataset from Position 12

**Learning Objectives:**
1. Fit K-Means clustering on standardized store KPIs with k=5
2. Generate elbow and silhouette plots for k=2 to 10 and justify final k selection
3. Calculate cluster centroids in original scale and create business profiles
4. Apply PCA and create a presentation-ready cluster visualization
5. Document the clustering methodology for technical handover

**Duration:** 4h 0m

**Mapped Scenarios:** 23, 24, 25

---

### Position 15: Business Rules & Optimization Logic

**Content Type:** MASTERCLASS

**Overview:**
Raw ML output isn't enough for production. This masterclass covers how to layer business rules onto recommendations: mandatory SKUs, regional exclusions, target caps, and outlier handling. Learners will understand the delicate balance between algorithmic optimization and business constraints.

**Pre-requisites:**
- Completed: Store Clustering Implementation (Position 14)
- Understanding of recommendation logic from Position 6

**Learning Objectives:**
1. Implement revenue maximization logic using projected sales and adoption probability
2. Apply hard constraints: mandatory SKUs, regional exclusions, target caps
3. Handle rule conflicts (e.g., mandatory SKU exceeds cap)
4. Detect and handle bulk purchase outliers in recommendation calculations
5. Write unit tests for each business rule implementation

**Duration:** 2h 30m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Revenue Maximization Logic |
| 2 | Hard Constraints vs Soft Constraints |
| 3 | Handling Rule Conflicts |
| 4 | Outlier-Robust Recommendations |

---

### Position 16: Recommendation Optimization - Hands On

**Content Type:** SCENARIO

**Overview:**
Build the recommendation optimization layer: implement greedy SKU selection for revenue maximization, layer business rules for mandatory inclusions and exclusions, and create outlier-robust aggregations. Test your logic with edge cases and document the business rule engine.

**Pre-requisites:**
- Completed: Business Rules & Optimization Logic (Position 15)
- Store clustering output from Position 14

**Learning Objectives:**
1. Implement `select_top_skus()` function with projected revenue calculation
2. Add business rule layers: mandatory SKUs, regional exclusions, target caps
3. Handle edge cases: cap exceeded by mandatory, empty recommendation sets
4. Implement outlier detection and capping for bulk purchase transactions
5. Create comprehensive unit tests covering all business rules

**Duration:** 3h 0m

**Mapped Scenarios:** 26, 27, 28

---

### Position 17: Scalable Pipelines with Databricks

**Content Type:** MASTERCLASS

**Overview:**
Scale from 8,000 to 80,000 stores using distributed computing. This masterclass covers PySpark fundamentals, the transition from Pandas to Spark DataFrames, and Databricks job scheduling. Learners will understand when and how to scale their pipelines for enterprise deployment.

**Pre-requisites:**
- Completed: Recommendation Optimization (Position 16)
- Python proficiency with Pandas
- Access to Databricks workspace

**Learning Objectives:**
1. Convert Pandas transformations to PySpark equivalents
2. Understand lazy evaluation and its implications for pipeline design
3. Configure and schedule Databricks Jobs for monthly execution
4. Save outputs to Delta Lake tables with proper partitioning
5. Set up alerting for pipeline success and failure notifications

**Duration:** 3h 0m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Pandas to PySpark Migration |
| 2 | Spark Execution Model |
| 3 | Databricks Jobs and Scheduling |
| 4 | Delta Lake for Analytics |

---

### Position 18: Databricks Pipeline Implementation - Hands On

**Content Type:** SCENARIO

**Overview:**
Migrate your Python pipeline to Databricks: convert key transformations to PySpark, set up automated monthly scheduling, save outputs to Delta tables, and configure notifications. This scenario transforms your notebook prototype into a production-grade pipeline.

**Pre-requisites:**
- Completed: Scalable Pipelines with Databricks (Position 17)
- Databricks workspace with cluster access

**Learning Objectives:**
1. Convert data loading, filtering, and aggregation operations to PySpark
2. Compare execution times: Pandas on 8K stores vs PySpark on 80K stores
3. Create a Databricks Job with monthly cron schedule (5th of each month)
4. Chain notebooks: Data Prep → Clustering → Profiling → Recommendations
5. Configure email alerts and validate with manual trigger

**Duration:** 3h 30m

**Mapped Scenarios:** 29, 30

---

### Position 19: Compliance Dashboards with Power BI

**Content Type:** MASTERCLASS

**Overview:**
Recommendations are useless if no one acts on them. This masterclass covers building compliance tracking dashboards that measure recommendation adoption, calculate revenue attribution, and enable drill-through analysis. Learners will master DAX measures and effective dashboard design.

**Pre-requisites:**
- Basic Power BI: importing data, creating visuals
- Completed: Databricks Pipeline Implementation (Position 18)
- Recommendation outputs and actual orders data

**Learning Objectives:**
1. Design a data model linking recommendations to actual orders
2. Create DAX measures for compliance rate, recommended revenue, and uplift
3. Build effective visualizations: cards, bar charts, trend lines, heat maps
4. Implement slicers and drill-through for regional analysis
5. Apply conditional formatting to highlight underperforming regions

**Duration:** 3h 0m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Data Model for Compliance Tracking |
| 2 | DAX Measures: Compliance and Attribution |
| 3 | Visualization Best Practices |
| 4 | Interactive Filtering and Drill-Through |

---

### Position 20: Power BI Dashboard - Hands On

**Content Type:** SCENARIO

**Overview:**
Build the complete compliance tracking dashboard: overall and regional compliance rates, revenue attribution, trend analysis, and store-level detail tables. Create a dashboard that sales leadership can use to drive recommendation adoption.

**Pre-requisites:**
- Completed: Compliance Dashboards with Power BI (Position 19)
- Power BI Desktop installed
- Recommendation and orders datasets

**Learning Objectives:**
1. Build a Power BI data model with recommendations and orders tables
2. Create DAX measures: Compliance Rate, Recommended Revenue, Revenue per Recommendation
3. Design a 4-visual dashboard: card, bar chart, line trend, detail table
4. Implement region and cluster slicers with drill-through to store level
5. Validate DAX measures against manual Excel calculations

**Duration:** 3h 30m

**Mapped Scenarios:** 31, 32

---

### Position 21: Building User Interfaces with Streamlit

**Content Type:** MASTERCLASS

**Overview:**
Make your recommendation engine accessible to sales reps through a simple web interface. This masterclass covers Streamlit fundamentals: widgets, layouts, caching, and deployment. Learners will understand how to build user-friendly data applications without frontend expertise.

**Pre-requisites:**
- Python proficiency
- Completed: Power BI Dashboard (Position 20)
- Recommendation engine outputs ready

**Learning Objectives:**
1. Build interactive widgets: selectbox, multiselect, buttons, download
2. Implement efficient data loading with @st.cache_data
3. Design clean layouts using columns, containers, and expanders
4. Add filtering, export, and error handling capabilities
5. Deploy to Streamlit Cloud with secrets management

**Duration:** 3h 0m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Streamlit Widgets and Layout |
| 2 | State Management and Caching |
| 3 | Export and Download Features |
| 4 | Deployment and Authentication |

---

### Position 22: Streamlit Application - Hands On

**Content Type:** SCENARIO

**Overview:**
Build and deploy the sales rep interface: store lookup, recommendation display, regional filtering, Excel export, and cloud deployment. By the end, you'll have a live application that 50 sales managers can access to view recommendations.

**Pre-requisites:**
- Completed: Building User Interfaces with Streamlit (Position 21)
- GitHub account for deployment
- Recommendation data files ready

**Learning Objectives:**
1. Build a store lookup interface with search-enabled dropdown
2. Display store profile card and recommendations table with projected revenue
3. Add region and cluster filters with multi-select capability
4. Implement Excel export with st.download_button
5. Deploy to Streamlit Cloud and test on mobile and desktop

**Duration:** 4h 0m

**Mapped Scenarios:** 33, 34, 35

---

### Position 23: Technical Communication & Documentation

**Content Type:** MASTERCLASS

**Overview:**
Your work is only as valuable as your ability to communicate it. This masterclass covers executive communication, technical documentation, interview preparation, and business impact articulation. Learners will transform from "someone who builds models" to "someone who drives business decisions."

**Pre-requisites:**
- Completed all technical modules (Positions 1-22)
- All project outputs and visualizations ready

**Learning Objectives:**
1. Create a one-slide executive summary following the pyramid principle
2. Document methodology for technical handover with architecture diagrams
3. Articulate algorithm choices (why K-Means?) with alternatives considered
4. Explain data quality handling with specific examples
5. Quantify business impact in revenue, efficiency, and coverage terms

**Duration:** 2h 30m

**Scenarios within Masterclass:**

| Position | Scenario Name |
|----------|--------------|
| 1 | Executive Communication |
| 2 | Technical Documentation |
| 3 | Algorithm Defense |
| 4 | Impact Quantification |

---

### Position 24: Portfolio Preparation - Hands On

**Content Type:** SCENARIO

**Overview:**
Prepare your complete portfolio for job interviews: executive summary slide, technical documentation, interview question responses, and quantified impact statements. This scenario transforms your project work into compelling career assets.

**Pre-requisites:**
- Completed: Technical Communication & Documentation (Position 23)
- PowerPoint/Google Slides for presentations
- All project artifacts ready

**Learning Objectives:**
1. Create a 1-slide executive summary with headline, metrics, visual, and next steps
2. Write technical documentation including architecture diagram and data dictionary
3. Prepare written answers for "Why K-Means?" and "How did you handle data quality?"
4. Quantify business impact with conservative, supportable numbers
5. Practice 2-minute elevator pitch for the project

**Duration:** 3h 0m

**Mapped Scenarios:** 36, 37, 38, 39, 40

---

### Position 25: Mini Project - Store Segmentation Analysis

**Content Type:** PROJECT

**Overview:**
Apply your skills to create a complete store segmentation analysis for a new region. Starting from raw transaction data, clean, profile, cluster, and visualize stores with business recommendations. This project tests your ability to work independently on an end-to-end analytics workflow.

**Pre-requisites:**
- Completed: Python Data Pipeline (Position 12)
- Completed: Store Clustering Implementation (Position 14)
- Fresh dataset provided (different region)

**Learning Objectives:**
1. Independently prepare data from raw transactions to analysis-ready format
2. Apply clustering and determine optimal segments without guidance
3. Profile clusters and create business-actionable names
4. Create a presentation-ready report with visualizations
5. Defend methodology choices in a mock review session

**Duration:** 8h 0m

---

### Position 26: Mini Project - SKU Portfolio Optimization

**Content Type:** PROJECT

**Overview:**
Conduct a complete SKU portfolio analysis: identify heroes and zombies, investigate anomalies, and make rationalization recommendations. This project tests your ability to combine domain knowledge with analytical skills to deliver business insights.

**Pre-requisites:**
- Completed: SKU Performance Analysis (Position 4)
- Completed: Business Rules & Optimization Logic (Position 15)
- Fresh SKU dataset provided (different category)

**Learning Objectives:**
1. Perform Pareto analysis and classify SKUs into performance tiers
2. Investigate and explain counterintuitive tier assignments
3. Identify candidates for SKU rationalization (zombies to discontinue)
4. Calculate projected impact of portfolio changes
5. Present recommendations with supporting data to stakeholders

**Duration:** 8h 0m

---

### Position 27: Capstone - End-to-End Recommendation System (Optional)

**Content Type:** PROJECT

**Overview:**
Build a complete recommendation system from scratch for a new client/category. This capstone integrates all skills: data preparation, clustering, SKU profiling, recommendation generation, business rules, pipeline automation, dashboards, and user interface. Deliver a production-ready solution with documentation.

**Pre-requisites:**
- Completed all masterclasses and scenarios (Positions 1-24)
- Completed at least one mini project (Position 25 or 26)
- New client dataset provided

**Learning Objectives:**
1. Design and implement complete data pipeline from raw to recommendations
2. Apply appropriate clustering and profiling methodologies with justification
3. Implement business rules and optimization logic per client requirements
4. Build monitoring dashboard and user interface for recommendation access
5. Create technical and executive documentation for handover
6. Present and defend the complete solution in a mock client review

**Duration:** 16h 0m

---

## Summary Statistics

| Metric | Value |
|--------|-------|
| Total Masterclasses | 12 |
| Total Hands-On Scenarios | 12 |
| Total Mini Projects | 2 |
| Optional Capstone | 1 |
| Total Duration (excluding Capstone) | ~104 hours |
| Total Duration (including Capstone) | ~120 hours |
| Recommended Timeline | 8 weeks |

---

## Learning Path Visualization

```
Phase 1: Foundations (Weeks 1-3)
├── Week 1: Domain Foundations
│   ├── CPG Distribution & Retail Operations (MC)
│   ├── Understanding CPG Distribution (HO)
│   ├── SKU Profiling & Performance Analytics (MC)
│   └── SKU Performance Analysis (HO)
└── Week 2-3: Analytics Foundations
    ├── Store Clustering Fundamentals (MC)
    ├── Manual Clustering & Recommendation Logic (HO)
    ├── Data Quality & Validation (MC)
    └── Data Quality Assessment (HO)

Phase 2: Production Implementation (Weeks 3-6)
├── Week 3-4: SQL & Python
│   ├── SQL for Retail Analytics (MC)
│   ├── SQL Analytics Pipeline (HO)
│   ├── Python Data Engineering (MC)
│   └── Python Data Pipeline (HO)
├── Week 4-5: Machine Learning & Optimization
│   ├── Machine Learning: K-Means Clustering (MC)
│   ├── Store Clustering Implementation (HO)
│   ├── Business Rules & Optimization Logic (MC)
│   └── Recommendation Optimization (HO)
└── Week 5-6: Production & Visualization
    ├── Scalable Pipelines with Databricks (MC)
    ├── Databricks Pipeline Implementation (HO)
    ├── Compliance Dashboards with Power BI (MC)
    ├── Power BI Dashboard (HO)
    ├── Building User Interfaces with Streamlit (MC)
    └── Streamlit Application (HO)

Phase 3: Communication & Projects (Weeks 7-8)
├── Technical Communication & Documentation (MC)
├── Portfolio Preparation (HO)
├── Mini Project: Store Segmentation (PRJ)
├── Mini Project: SKU Portfolio (PRJ)
└── Capstone: End-to-End System (PRJ) [Optional]
```

MC = Masterclass | HO = Hands-On Scenario | PRJ = Project
