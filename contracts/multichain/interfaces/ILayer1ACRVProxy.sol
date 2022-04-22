// SPDX-License-Identifier: MIT

pragma solidity ^0.7.6;

interface ILayer1ACRVProxy {
  /// @notice Cross chain deposit CRV to aCRV and cross back to target chain.
  /// @param _executionId An unique id to keep track on the deposit operation on target chain.
  /// @param _targetChain The target chain id.
  /// @param _recipient The address of recipient who will receive the aCRV on target chain.
  /// @param _crvAmount The amount of CRV to deposit.
  /// @param _callback The address who will receive callback on target chain.
  function deposit(
    uint256 _executionId,
    uint256 _targetChain,
    address _recipient,
    uint256 _crvAmount,
    address _callback
  ) external;

  /// @notice Cross chain withdraw aCRV to CRV and cross back to target chain.
  /// @param _executionId An unique id to keep track on the withdraw operation on target chain.
  /// @param _targetChain The target chain id.
  /// @param _recipient The address of recipient who will receive the aCRV on target chain.
  /// @param _acrvAmount The amount of aCRV to withdraw.
  /// @param _callback The address who will receive callback on target chain.
  function withdraw(
    uint256 _executionId,
    uint256 _targetChain,
    address _recipient,
    uint256 _acrvAmount,
    address _callback
  ) external;
}
