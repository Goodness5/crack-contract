// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

interface Icontract {
     function pwnMe(string memory _name) external payable;
     function level1(uint16 _key) external;
      function level2(string memory _name) external;
}