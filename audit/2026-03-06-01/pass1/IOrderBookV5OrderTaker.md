# Pass 1: Security — IOrderBookV5OrderTaker.sol (A03)

## Evidence of Thorough Reading

**Interface:** `IOrderBookV5OrderTaker` (line 7)

**Functions:** `onTakeOrders2(address, address, Float, Float, bytes)` (25-31)

**No errors, events, or structs defined.**

## Findings

### A03-1 | MEDIUM | Lines 25-31
**Callback lacks reentrancy warning in NatSpec**
`onTakeOrders2` executes mid-transaction (after input tokens sent, before output pulled). NatSpec does not warn that:
1. This is a mid-state-transition callback.
2. Implementations MUST NOT re-enter the orderbook.
3. Orderbook implementations MUST use reentrancy guards.
Missing guidance increases risk of unsafe implementations.
