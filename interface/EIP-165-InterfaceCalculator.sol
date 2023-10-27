// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EIP165InterfaceIdCalculator {
    function calculateMinimalLSP22() external pure returns (bytes4) {
        return (
            bytes4(keccak256("lockAsset(uint256,address,string,uint8,uint8,bytes32,bytes32,address)")) ^
            bytes4(keccak256("unlockAsset(uint256)")) ^
            bytes4(keccak256("removeAsset(uint256)"))
        );
    }

        function calculateRedeemableLSP22() external pure returns (bytes4) {
        return (
            bytes4(keccak256("lockAsset(uint256,address,string,uint8,uint8,bytes32,bytes32,address)")) ^
            bytes4(keccak256("unlockAsset(uint256)")) ^
            bytes4(keccak256("removeAsset(uint256)")) ^
            bytes4(keccak256("redeemAsset(uint256,uint8,address)"))
        );
    }
}

