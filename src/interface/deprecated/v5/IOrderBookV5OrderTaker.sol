// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {Float} from "./IOrderBookV5.sol";

/// @title IOrderBookV5OrderTaker
/// @notice Interface for contracts that wish to `takeOrders` from an
/// `IOrderBookV5` contract and receive a callback between the input being
/// sent and output being taken.
///
/// SECURITY: This callback executes mid-transaction, after input tokens
/// have been sent to the taker but before output tokens are pulled.
/// Implementations MUST NOT re-enter the orderbook (e.g. via takeOrders,
/// withdraw, or clear) during this callback. Orderbook implementations
/// MUST use reentrancy guards to protect against malicious callbacks.
/// Implementations SHOULD validate that `msg.sender` is the trusted
/// orderbook contract.
interface IOrderBookV5OrderTaker {
    /// @notice Called by `IOrderBookV5` when `takeOrders` is called with
    /// non-zero data, if it caused a non-zero input amount. I.e. if the order(s)
    /// taker received some tokens. Input and output directions are relative to
    /// the `IOrderBookV5OrderTaker` contract. If the order(s) taker had an
    /// active debt from a flash loan then that debt will be paid _before_
    /// calculating any input amounts sent.
    /// i.e. the debt is deducted from the input amount before this callback is
    /// called.
    /// @param inputToken The token that was sent to `IOrderBookV5OrderTaker`.
    /// @param outputToken The token that `IOrderBookV5` will attempt to pull
    /// from `IOrderBookV5OrderTaker` after this callback returns.
    /// @param inputAmountSent The amount of `inputToken` that was sent to
    /// `IOrderBookV5OrderTaker`.
    /// @param totalOutputAmount The total amount of `outputToken` that
    /// `IOrderBookV5` will attempt to pull from `IOrderBookV5OrderTaker` after
    /// this callback returns.
    /// @param takeOrdersData The data passed to `takeOrders` by the caller.
    function onTakeOrders2(
        address inputToken,
        address outputToken,
        Float inputAmountSent,
        Float totalOutputAmount,
        bytes calldata takeOrdersData
    ) external;
}
