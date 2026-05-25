"""Scenario 16 — recommendation logic + business rules.

Fill in the function bodies below. Keep functions pure and testable.
"""
from __future__ import annotations

import pandas as pd


def select_top_skus(
    store_id: int,
    sku_profile: pd.DataFrame,
    cluster_assignment: pd.DataFrame,
    k: int = 10,
) -> pd.DataFrame:
    """Return the top-k SKUs for a store, ranked by projected revenue.

    Projected revenue = expected_units * avg_price * adoption_probability.
    """
    raise NotImplementedError


def apply_business_rules(
    recommendations: pd.DataFrame,
    store_meta: dict,
    *,
    mandatory_skus: list[int] | None = None,
    excluded_skus: list[int] | None = None,
    target_cap: int | None = None,
) -> pd.DataFrame:
    """Apply mandatory, exclusion, and cap rules in that precedence order."""
    raise NotImplementedError
