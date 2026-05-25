"""Scenario 16 — unit tests for recommendation logic.

Each business rule should have at least one test covering the happy path
and one covering an edge case.
"""
import pytest


def test_mandatory_sku_always_included():
    pytest.skip("TODO: implement once select_top_skus + apply_business_rules are done")


def test_excluded_sku_never_included():
    pytest.skip("TODO")


def test_target_cap_respected():
    pytest.skip("TODO")


def test_cap_exceeded_by_mandatory_resolves_per_policy():
    pytest.skip("TODO — document and assert the precedence rule from rules.md")


def test_empty_recommendation_set_returns_empty_frame():
    pytest.skip("TODO")
