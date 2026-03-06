# Pass 1: Security — IOrderBookV5.sol (A01)

## Evidence of Thorough Reading

**Interface:** `IOrderBookV5` (line 318), inherits `IERC3156FlashLender`, `IInterpreterCallerV4`

**Structs:** `ClearStateChangeV2` (35), `ClearConfigV2` (52), `TaskV2` (73), `IOV2` (86), `OrderConfigV4` (106), `OrderV4` (131), `TakeOrderConfigV4` (148), `TakeOrdersConfigV4` (172), `QuoteV2` (187)

**Errors:** `ZeroDepositAmount` (323), `ZeroWithdrawTargetAmount` (331), `OrderNoSources` (334), `OrderNoHandleIO` (337), `OrderNoInputs` (339), `OrderNoOutputs` (342). Re-exported from V4: `NoOrders`, `ZeroMaximumInput` (18).

**Events:** `DepositV2` (351), `WithdrawV2` (365), `AddOrderV3` (383), `RemoveOrderV3` (390), `TakeOrderV3` (401), `OrderNotFound` (409), `OrderZeroAmount` (417), `OrderExceedsMaxRatio` (425), `ClearV3` (433), `AfterClearV2` (439)

**Functions:** `vaultBalance2` (446), `entask2` (453), `deposit3` (485), `withdraw3` (506), `orderExists` (511), `quote2` (527), `addOrder3` (556), `removeOrder3` (569), `takeOrders3` (609), `clear3` (660)

## Findings

### A01-1 | INFO | Line 420
**NatSpec typo: "An error rather than an error"**
Should read "An event rather than an error" for `OrderExceedsMaxRatio`.

### A01-2 | INFO | Lines 54-60
**IO index fields use uint256 where smaller types would suffice**
`aliceInputIOIndex` etc. in `ClearConfigV2`, `TakeOrderConfigV4`, `QuoteV2` are `uint256` but index into small arrays.

### A01-3 | LOW | Lines 96, 118
**NatSpec references wrong EvaluableV version**
`OrderConfigV4` NatSpec says "Standard `EvaluableV3`" (line 96) but field is `EvaluableV4`. `OrderV4` NatSpec says "Standard `EvaluableV2`" (line 118) but field is `EvaluableV4`.

### A01-4 | INFO | Line 316
**NatSpec typo `IOderBookV5`**
Missing 'r' in "IOrderBookV5".

### A01-5 | LOW | Lines 172-179
**Float zero-value semantics undocumented for minimumInput**
NatSpec says minimumInput "MAY be set to zero" but doesn't clarify what zero means in the Float domain.
