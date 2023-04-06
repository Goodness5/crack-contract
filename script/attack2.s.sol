// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Script.sol";
import "../src/Attack2.sol";

contract chall is Script {
        Attack2 challengedeployed;
        
        function run() public{
            uint256 key = vm.envUint("private_key");
            vm.startBroadcast(key);
            challengedeployed = new Attack2();

            challengedeployed.getKey();
            // challengedeployed.exploit();
            vm.stopBroadcast();
        }
}