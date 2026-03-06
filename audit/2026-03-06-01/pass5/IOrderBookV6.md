# Pass 5: Correctness — IOrderBookV6.sol (A14)

## Evidence of Thorough Reading

Same as prior passes.

## Findings

### A14-7 | LOW | Lines 359, 380
**`deposit4`/`withdraw4` docs don't name `ZeroVaultId` error**
Both functions document that vault ID `0` is disallowed but don't say "MUST revert with `ZeroVaultId`", unlike all other error references in the same interface (e.g., "MUST revert with `ZeroDepositAmount`"). Implementers may use a different error or forget to check.

### A14-8 | LOW | Lines 464-478
**`takeOrders4` NatSpec still describes input-only semantics**
NatSpec says "filled maximally until the request input is reached" and "MAY specify a minimum input". But V6's `TakeOrdersConfigV5` has `IOIsInput` flag allowing limits on either input or output. NatSpec should reflect the dual semantics.
