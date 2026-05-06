# dartmerkle

`dartmerkle` keeps a focused Dart implementation around algorithms. The project goal is to build Merkle roots and inclusion proof fixtures.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how input width and boundary pressure should influence a review result.

## Dartmerkle Review Notes

For a quick review, compare `complexity` with `input width` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/dartmerkle-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `complexity` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added Dart path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
