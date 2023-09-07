// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Yul {
    function getUint256 () external pure returns(uint256) {
        uint256 x;
        assembly{
            x:= 10
        }
        return x;
    }
    function getHex () external pure returns(uint256) {
        uint256 x;
        assembly{
            x:=0x64
        }
        return x;
    }
    function getRepresentation () external pure returns(address) {
        address x;
        assembly{
            x:= 5
        }
        return x;
    }
    function getBoolean() external pure returns(bool){
        bool x;
        assembly{
            x:= 1
        }
        return x;
    }
    // function power(base, exponent) -> result
    // {
    //     switch exponent
    //     case 0 { result := 1 }
    //     case 1 { result := base }
    //     default
    //     {
    //         result := power(mul(base, base), div(exponent, 2))
    //         switch mod(exponent, 2)
    //             case 1 { result := mul(base, result) }
    //     }
    // }
    function getString() external pure returns(string memory){
        string memory x;
        assembly{
            x:= "Hello World"
        }
        return x;
    } //Runs Out of Gas because string are not installed on the stack, So it been stored equivalent on the heap. How to solve this, We have to use bytes32.

    function getBytes32() external pure returns(bytes32){
        bytes32 x;
        assembly{
            x:= "Hello World"
        }
        return x;
    }

    function getStringUsingBytes32 () external pure returns(string memory){
        bytes32 x;
        assembly{
            x:= "Bytes32 is stored on stack.s fsd"
        }
        return string(abi.encodePacked(x));

    }

}