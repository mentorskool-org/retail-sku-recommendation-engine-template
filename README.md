# Retail SKU Recommendation Engine — Cohort Project

Welcome! In this 8-week project you will build an end-to-end SKU recommendation engine that helps Consumer Packaged Goods (CPG) sales representatives decide which products to pitch to each retail store. The engine combines store clustering, SKU profiling, and peer-based recommendation logic — and you will productionise it with SQL, Python, PySpark/Databricks, Power BI, and Streamlit.

## What you'll deliver

You will complete **10 hands-on scenarios** spread across the project lifecycle:

| # | Scenario | Stack |
|---|----------|-------|
| 02 | Understanding CPG Distribution | Excel |
| 04 | SKU Performance Analysis | Excel |
| 06 | Manual Clustering & Recommendation Logic | Excel |
| 08 | Data Quality Assessment | Excel |
| 10 | SQL Analytics Pipeline | SQL |
| 12 | Python Data Pipeline | Pandas, sklearn |
| 14 | Store Clustering Implementation | scikit-learn, PCA |
| 16 | Recommendation Optimization | Python, business rules |
| 20 | Power BI Dashboard | Power BI, DAX |
| 24 | Portfolio Preparation | PowerPoint, docs |

Each scenario lives in its own folder under `scenarios/` and ships with a focused `README.md` describing learning objectives, expected deliverables, and a submission checklist.

## Repo layout

```
.
├── scenarios/                # 10 hands-on scenarios — your work lives here
│   ├── 02-cpg-distribution/
│   ├── 04-sku-performance/
│   ├── 06-manual-clustering/
│   ├── 08-data-quality/
│   ├── 10-sql-pipeline/
│   ├── 12-python-pipeline/
│   ├── 14-store-clustering/
│   ├── 16-recommendation-optimization/
│   ├── 20-powerbi-dashboard/
│   └── 24-portfolio/
├── data/
│   ├── raw/                  # mentor will share datasets here as the cohort progresses
│   └── processed/            # intermediate outputs from your pipelines
├── docs/
│   └── SUBMISSION.md         # how to submit + rubric
├── skill-path-sku-recommendation-engine.md   # full 27-position learning path for context
└── requirements.txt
```

## Getting started

1. **Accept the assignment** via the GitHub Classroom invitation link your mentor shares. This creates your personal copy of this repo.
2. **Clone your copy** locally:
   ```bash
   git clone https://github.com/mentorskool-org/<your-classroom-repo>.git
   cd <your-classroom-repo>
   ```
3. **Set up Python** (3.10+ recommended):
   ```bash
   python -m venv .venv
   source .venv/bin/activate    # Windows: .venv\Scripts\activate
   pip install -r requirements.txt
   ```
4. **Launch Jupyter** for notebook-based scenarios:
   ```bash
   jupyter lab
   ```
5. **Read the scenario brief** in `scenarios/<scenario-folder>/README.md` before you start each piece of work.

## How to submit

Each scenario is graded on commits to your classroom repo. The convention is:

- Commit your work into the relevant `scenarios/<scenario-folder>/` directory.
- Use clear commit messages: `feat(scenario-12): python data pipeline notebook`.
- Open a Pull Request from a feature branch into `main` for mentor review when a scenario is ready.
- See `docs/SUBMISSION.md` for the full rubric and submission checklist.

## Prerequisites

- Basic Python (variables, functions, control flow, Pandas familiarity helpful).
- Comfort with Excel: formulas, charts, pivot tables.
- Basic SQL (SELECT, WHERE, GROUP BY).
- A GitHub account and `git` installed locally.
- Power BI Desktop (free, Windows-only) for scenario 20.

## Need help?

Reach out to your mentor on the cohort's communication channel. For repo / setup issues, open an issue in this repo and tag your mentor.

Good luck — build something you'll be proud to put on your portfolio.
