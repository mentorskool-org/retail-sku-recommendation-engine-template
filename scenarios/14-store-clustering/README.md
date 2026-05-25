# Scenario 14 — Store Clustering Implementation (Hands-On)

**Stack:** Python · scikit-learn · PCA  •  **Duration:** ~4h 0m  •  **Maps to sub-scenarios:** 23, 24, 25

## Overview

Implement the complete store clustering module: fit K-Means on 8,000 stores, determine optimal k through systematic evaluation, profile each cluster with business-meaningful names, and create executive-ready visualisations. This is the ML core of your recommendation engine.

## Pre-requisites

- Completed: Machine Learning: K-Means Clustering masterclass (Position 13)
- Prepared store KPI dataset from scenario 12

## Learning Objectives

1. Fit K-Means clustering on standardised store KPIs with `k=5` using `k-means++` init.
2. Generate elbow and silhouette plots for `k=2..10` and justify final `k` selection.
3. Calculate cluster centroids in original scale and create business profiles.
4. Apply PCA and create a presentation-ready cluster visualisation.
5. Document the clustering methodology for technical handover.

## Deliverables (commit into this folder)

- `clustering.ipynb` — main notebook.
- `artifacts/kmeans_model.joblib` — persisted model.
- `figures/elbow.png`, `figures/silhouette.png`, `figures/pca_clusters.png`.
- `cluster-profiles.md` — business names, centroid characteristics, recommended actions per cluster.

## Submission Checklist

- [ ] Final `k` chosen with explicit elbow + silhouette + business rationale
- [ ] Each cluster has a 1-line business name (e.g., "High-value urban", "Tail rural")
- [ ] PCA plot is legible and labelled
- [ ] PR opened with mentor tagged
