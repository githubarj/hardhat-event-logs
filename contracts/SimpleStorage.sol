// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 public favoriteNumber;

    event storedNumber(
        uint256 indexed olNumber,
        uint256 indexed newNUmber,
        uint256 addedNumber,
        address sender
    );//this is now a new tye called stored number

    function store(uint256 _favoriteNumber) public {
        emit storedNumber(
            favoriteNumber,
            _favoriteNumber,
            favoriteNumber + _favoriteNumber,
            msg.sender
        );
        favoriteNumber = _favoriteNumber;
    }
}
