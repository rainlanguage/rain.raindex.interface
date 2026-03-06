# Triage — Audit 2026-03-06-01

## All LOW+ Findings

| ID | Severity | Pass | File | Title | Status |
|-----|----------|------|------|-------|--------|
| A01-1 | LOW | P0 | CLAUDE.md | Pragma version inconsistency between CLAUDE.md and submodule | DISMISSED — CLAUDE.md already notes the difference with a parenthetical |
| A01-3 | LOW | P1 | IOrderBookV5.sol | NatSpec references wrong EvaluableV version (lines 96, 118) | FIXED |
| A01-5 | LOW | P1 | IOrderBookV5.sol | Float zero-value semantics undocumented for minimumInput | DISMISSED — Float zero semantics are the responsibility of the float library, not the interface NatSpec |
| A01-6 | LOW | P3 | IOrderBookV5.sol | OrderV4 struct-level doc references stale EvaluableV2 (line 116) | FIXED — addressed with A01-3 |
| A01-7 | LOW | P3 | IOrderBookV5.sol | Interface NatSpec references stale IInterpreterV1 (line 312) | FIXED |
| A01-9 | LOW | P3 | IOrderBookV5.sol | Interface NatSpec says vault IDs are bytes but they are bytes32 | FIXED |
| A01-10 | LOW | P3 | IOrderBookV5.sol | entask2 missing @param tasks NatSpec | FIXED |
| A01-11 | LOW | P4 | IOrderBookV5.sol | Broken NatSpec: // instead of /// truncates deposit3 docs | FIXED |
| A02-1 | LOW | P1 | IOrderBookV5ArbOrderTaker.sol | arb4 payable function lacks NatSpec documentation | FIXED |
| A02-3 | LOW | P3 | IOrderBookV5ArbOrderTaker.sol | IOrderBookV5ArbOrderTaker interface lacks any NatSpec | FIXED — addressed with A02-1 |
| A03-1 | MEDIUM | P1 | IOrderBookV5OrderTaker.sol | Callback lacks reentrancy warning in NatSpec | FIXED |
| A03-2 | LOW | P3 | IOrderBookV5OrderTaker.sol | IOrderBookV5OrderTaker interface lacks @title/@notice NatSpec | FIXED — addressed with A03-1 |
| A13-1 | LOW | P3 | IERC3156FlashLender.sol | flashLoan missing @return documentation | FIXED |
| A14-4 | LOW | P3 | IOrderBookV6.sol | entask2 has no NatSpec tags in V6 | FIXED |
| A14-7 | LOW | P5 | IOrderBookV6.sol | deposit4/withdraw4 docs don't name ZeroVaultId error | FIXED |
| A14-8 | LOW | P5 | IOrderBookV6.sol | takeOrders4 NatSpec still describes input-only semantics | FIXED |
| A15-1 | LOW | P1 | IOrderBookV6ArbOrderTaker.sol | arb5 payable function lacks NatSpec documentation | FIXED |
| A16-1 | LOW | P1 | IOrderBookV6OrderTaker.sol | onTakeOrders2 callback lacks caller validation guidance | FIXED |
