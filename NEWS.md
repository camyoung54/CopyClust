# CopyClust 1.1.1

## Bug fixes

* Re-saved all six XGBoost boosters in `R/sysdata.rda` from the deprecated
  legacy binary format (buffers beginning `binf`) to UBJSON. XGBoost 2.1
  removed the reader for the legacy format, causing `CopyClust()` to fail with
  `Error in xgb.load.raw(...) : Unknown construct, around character position: 1`.
  Model structure is unchanged: IntClust calls are identical for all 1,075
  samples in `test_data` under both the `6C` and `10C` approaches
  (reported thanks to Oscar Rueda).

* `CopyClust(model_approach = "6C")` no longer errors when a coarse subgroup
  receives zero samples. The binary reclassification step is now handled by an
  internal helper that returns an empty result for empty subgroups. This
  previously affected small input sets.

## Documentation

* Documented that `test_labels` stores integrative cluster labels zero-indexed
  (`0`-`9`) while `CopyClust()` returns one-indexed labels (`1`-`10`).

## Dependencies

* Minimum `xgboost` raised from 1.7.5 to 2.0.0. UBJSON support in 1.7 was
  experimental.
