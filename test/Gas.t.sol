// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/Unoptimized.sol";
import "../src/Optimized.sol";

contract GasTest is Test {
    Unoptimized un;
    Optimized op;

    function setUp() public {
        un = new Unoptimized();
        op = new Optimized();
    }

    function testGas_Unoptimized() public view {
        uint256[] memory data = new uint256[](100);
        un.sum(data);
    }

    function testGas_Optimized() public view {
        uint256[] memory data = new uint256[](100);
        op.sum(data);
    }
}
