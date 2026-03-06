# Pass 1: Security — Deprecated Interfaces (A04-A11)

## Files Reviewed

- A04: `deprecated/v1/IOrderBookV1.sol`
- A05: `deprecated/v2/IOrderBookV2.sol`
- A06: `deprecated/v3/IOrderBookV3.sol`
- A07: `deprecated/v3/IOrderBookV3ArbOrderTaker.sol`
- A08: `deprecated/v3/IOrderBookV3OrderTaker.sol`
- A09: `deprecated/v4/IOrderBookV4.sol`
- A10: `deprecated/v4/IOrderBookV4ArbOrderTaker.sol`
- A11: `deprecated/v4/IOrderBookV4OrderTaker.sol`

All are deprecated and not expected to be modified. Only propagation to active interfaces is relevant.

## Import Propagation Chain

V4 defines `NoOrders` (line 20) and `ZeroMaximumInput` (line 23) → V5 imports both (line 18).

## Findings

### A09-1 | INFO | IOrderBookV4.sol lines 20, 23
**Duplicate error definitions across V3 and V4**
`NoOrders()` and `ZeroMaximumInput()` defined in both V3 and V4 rather than V4 importing from V3. No bug since selectors are identical, but maintenance concern. No action needed on deprecated files.

No CRITICAL, HIGH, MEDIUM, or LOW findings in deprecated interfaces.
