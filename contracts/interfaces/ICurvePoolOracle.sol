// SPDX-License-Identifier: MIT

pragma solidity ^0.7.6;

// solhint-disable func-name-mixedcase

interface ICurvePoolOracle {
  /********************
   * Common Functions *
   ********************/

  function ma_exp_time() external view returns (uint256);

  function ma_last_time() external view returns (uint256);

  /****************************
   * Functions of Normal Pool *
   ****************************/

  function last_price() external view returns (uint256);

  function ema_price() external view returns (uint256);

  function price_oracle() external view returns (uint256);

  /************************
   * Functions of NG Pool *
   ************************/

  function last_price(uint256 index) external view returns (uint256);

  function ema_price(uint256 index) external view returns (uint256);

  function price_oracle(uint256 index) external view returns (uint256);
}
