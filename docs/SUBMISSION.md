# Submission Guide & Rubric

This document explains how to submit each scenario and how it will be graded.

## Workflow

1. **Create a branch** for the scenario you're working on:
   ```bash
   git checkout -b scenario-12-python-pipeline
   ```
2. **Work in the scenario folder** (`scenarios/<scenario-name>/`). Don't modify other scenarios in the same PR.
3. **Commit early, commit often.** Use descriptive messages:
   ```
   feat(scenario-12): add SKU profile function with composite scoring
   docs(scenario-12): explain tier validation strategy
   fix(scenario-12): handle missing region values in geography join
   ```
4. **Push your branch** and open a PR against `main`. Tag your mentor in the PR description.
5. **Address review comments** by pushing additional commits to the same branch — don't open a new PR.
6. **Merge** only after mentor approval.

## What counts as "submitted"

A scenario is considered submitted when:
- A PR is open against `main` from your scenario branch.
- All deliverables in that scenario's `README.md` checklist are committed.
- The PR description briefly explains what you did and any tradeoffs you made.

## Rubric (per scenario)

| Criterion | Weight | What we look for |
|-----------|--------|------------------|
| **Correctness** | 40% | Outputs match expected results; calculations are right; no silent bugs |
| **Code quality** | 20% | Clean, commented, reproducible; functions have docstrings; tests where required |
| **Business reasoning** | 20% | You justify methodology choices; you explain anomalies; you tie decisions to business outcomes |
| **Communication** | 10% | Notebooks have markdown context; READMEs/notes are clear; commit messages are useful |
| **Submission hygiene** | 10% | PR opened on time; checklist items ticked; no stray files; mentor tagged |

## Timelines

Mentor will share suggested deadlines for each scenario. Late submissions are accepted but flagged in the rubric.

## Re-submissions

If a scenario is marked "needs rework", push fixes to the same branch and re-request review. You won't lose points for iterating — that's the point.

## Questions

- **Setup / environment issues:** open an issue in your repo and tag the mentor.
- **Conceptual / domain questions:** ask in the cohort's communication channel.
- **Rubric clarifications:** comment directly on the relevant PR.
