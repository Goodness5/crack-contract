// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Script.sol";
import "../src/Attack.sol";

contract chall is Script {
        Attack challengedeployed;
        
        function run() public{
            uint256 key = vm.envUint("private_key");
            vm.startBroadcast(key);
            challengedeployed = new Attack();

            // vm.prank(0xE6e2595f5f910c8A6c4cf42267Ca350c6BA8c054);
              bool sent = payable(0x174824ebf59ec8aAE10C7d8776d8d59E538a68F1).send(0.01 ether);
            challengedeployed.attak();
            vm.stopBroadcast();
        }
}