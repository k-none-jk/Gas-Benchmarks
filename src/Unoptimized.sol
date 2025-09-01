// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Unoptimized {
    uint256 public a;
    uint256 public b;
    function sum(uint256[] memory arr) external pure returns (uint256 s) { for (uint256 i; i < arr.length; i++) { s += arr[i]; } }
}
