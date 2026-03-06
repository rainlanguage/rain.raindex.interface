# Pass 3: Documentation — IOrderBookV5.sol (A01)

## Evidence of Thorough Reading

Same as Pass 1. All structs, errors, events, and functions enumerated there.

## Findings

### A01-6 | LOW | Line 116
**`OrderV4` struct-level doc references stale `EvaluableV2`**
Line 116: "Identical to `Order` except for the newer `EvaluableV2`." Should reference `EvaluableV4`. (Related to A01-3 which covers lines 96 and 118 — this is a third occurrence on line 116.)

### A01-7 | LOW | Line 312
**Interface NatSpec references stale `IInterpreterV1`**
Line 312: "any expression that can run on any `IInterpreterV1`". The actual import and interface uses `IInterpreterV4`.

### A01-8 | INFO | Line 43
**`ClearConfigV2` doc uses unclear phrase "token moment"**
"allows two orders to be fully matched to a specific token moment" — unclear meaning.

### A01-9 | LOW | Line 293
**Interface NatSpec says vault IDs are `bytes` but they are `bytes32`**
"As vault IDs are `bytes` values" — vault IDs are `bytes32` (line 88). Technically inaccurate.

### A01-10 | LOW | Lines 448-453
**`entask2` missing `@param tasks` NatSpec**
Has descriptive prose but no `@param` tag for its `tasks` parameter, unlike all other functions.
