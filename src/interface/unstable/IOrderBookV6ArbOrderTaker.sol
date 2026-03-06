// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {IOrderBookV6OrderTaker} from "./IOrderBookV6OrderTaker.sol";
import {TakeOrdersConfigV5, IOrderBookV6, TaskV2} from "./IOrderBookV6.sol";

/// @title IOrderBookV6ArbOrderTaker
/// @notice Interface for contracts that execute arbitrage against an
/// `IOrderBookV6` orderbook by taking orders and executing a post-arb task.
interface IOrderBookV6ArbOrderTaker is IOrderBookV6OrderTaker {
    /// Executes an arbitrage against the given orderbook. The `msg.value` MAY
    /// be used by the implementation to wrap native tokens or interact with
    /// external liquidity sources. Implementations MUST validate that
    /// `orderBook` is a trusted contract.
    /// @param orderBook The orderbook to arb against.
    /// @param takeOrders Config for the orders to take.
    /// @param task Post-arb task to evaluate.
    function arb5(IOrderBookV6 orderBook, TakeOrdersConfigV5 calldata takeOrders, TaskV2 calldata task)
        external
        payable;
}
