# Pass 1: Security — IOrderBookV6.sol (A14)

## Evidence of Thorough Reading

**Struct:** `TakeOrdersConfigV5` (51-62) — fields: `minimumIO`, `maximumIO`, `maximumIORatio`, `IOIsInput`, `orders`, `data`

**Interface:** `IOrderBookV6` (line 187), inherits `IERC3156FlashLender`, `IInterpreterCallerV4`

**Errors:** `ZeroVaultId` (191), `ZeroDepositAmount` (197), `ZeroWithdrawTargetAmount` (205), `OrderNoSources` (208), `OrderNoHandleIO` (211), `OrderNoInputs` (214), `OrderNoOutputs` (217), `ZeroMaximumIO` (220), `NoOrders` (223)

**Events:** `DepositV2` (231), `WithdrawV2` (245), `AddOrderV3` (263), `RemoveOrderV3` (270), `TakeOrderV3` (281), `OrderNotFound` (289), `OrderZeroAmount` (297), `OrderExceedsMaxRatio` (305), `ClearV3` (313), `AfterClearV2` (319)

**Functions:** `vaultBalance2` (326), `entask2` (333), `deposit4` (368), `withdraw4` (391), `orderExists` (396), `quote2` (412), `addOrder4` (445), `removeOrder3` (459), `takeOrders4` (499), `clear3` (550)

## Findings

### A14-1 | INFO | Lines 34-37
**NatSpec @param name mismatch for TakeOrdersConfigV5 fields**
NatSpec uses `minimumInput`/`maximumInput` but actual fields are `minimumIO`/`maximumIO`.

### A14-2 | INFO | Lines 51-62
**No validation guidance for zero maximumIORatio**
No error or NatSpec on whether zero `maximumIORatio` is valid (it would prevent any order matching).

### A14-3 | INFO | Line 368
**deposit4 Float input not reflected in DepositV2 event**
`deposit4` accepts `Float depositAmount` but `DepositV2` only emits `uint256`. Asymmetric with `WithdrawV2` which emits both.
