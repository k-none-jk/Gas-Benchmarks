// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Optimized {
    function sum(uint256[] memory arr) external pure returns (uint256 s) {
        uint256 len = arr.length;
        for (uint256 i; i < len; ) {
            s += arr[i];
            unchecked { i++; }
        }
    }
}
