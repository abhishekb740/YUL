// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract CheckPrime{
    function isPrime(uint256 x) external pure returns(bool p){
        assembly{
            p:=true
            let halfX:= add(div(x,2),1)
            for{let i:= 2} lt(i,halfX) {i:=add(i,1)} {
                if iszero(mod(x,i)) {
                    p:= false
                    break
                }
            }
        }
    }
}