// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract RectangleAreaCalculator {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function calculateArea(uint256 length, uint256 width) public view returns (uint256) {
        require( msg.sender == owner, "Sorry stranger, Only owners have rights to calculate the area" );
      
        assert(length > 0 && width > 0);
        uint256 area = length * width;

        if (area / length != width) {
            revert( "Error: Length and Width were inputted incorrectly.");
        }

        return area;
    }
}
