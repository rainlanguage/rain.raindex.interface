// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {IRaindexV6OrderTaker} from "./IRaindexV6OrderTaker.sol";
import {TakeOrdersConfigV5, IRaindexV6, TaskV2} from "./IRaindexV6.sol";

/// @title IRaindexV6ArbOrderTaker
/// @notice Interface for contracts that execute arbitrage against an
/// `IRaindexV6` Raindex by taking orders and executing a post-arb task.
interface IRaindexV6ArbOrderTaker is IRaindexV6OrderTaker {
    /// Executes an arbitrage against the given Raindex. The `msg.value` MAY
    /// be used by the implementation to wrap native tokens or interact with
    /// external liquidity sources. Implementations MUST validate that
    /// `raindex` is a trusted contract.
    /// @param raindex The Raindex to arb against.
    /// @param takeOrders Config for the orders to take.
    /// @param task Post-arb task to evaluate.
    function arb5(IRaindexV6 raindex, TakeOrdersConfigV5 calldata takeOrders, TaskV2 calldata task) external payable;
}
