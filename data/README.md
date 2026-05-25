# Data Directory

This folder is intentionally empty in the template. Your mentor will share the required datasets as the cohort progresses — drop them into the appropriate subfolder when you receive them.

## Layout

```
data/
├── raw/          # original CSVs / Excel files shared by your mentor — never edit
└── processed/    # intermediate Pandas / SQL outputs your pipelines produce
```

## Rules

- **Do not commit large data files.** The `.gitignore` already excludes everything under `raw/` and `processed/` except `.gitkeep` placeholders and `README.md` files.
- If a file is small (<5 MB) and required for a scenario to run (e.g., a tiny lookup table), confirm with your mentor before committing it.
- Treat `raw/` as read-only. All transformations land in `processed/`.

## Expected datasets

Your mentor will provide some subset of:

- `stores.csv` — store master with `store_id`, `name`, `region_id`, `format`.
- `products.csv` — SKU master with `sku_id`, `name`, `category`, `price`.
- `sales.csv` — transactional fact with `store_id`, `sku_id`, `txn_date`, `units`, `revenue`.
- `targets.csv` — monthly store targets.
- `geography.csv` — region → zone → state hierarchy.

Exact schemas and any deviations will be documented in the file your mentor shares alongside the dataset.
