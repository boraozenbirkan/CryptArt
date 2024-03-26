// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NewPixels {
    uint256 public constant CANVAS_SIZE = 64;

    mapping(uint256 => mapping (uint256 => string)) public canvas;

    // Modifier to ensure coordinates are within canvas bounds
    modifier withinBounds(uint256 x, uint256 y) {
        require(x < CANVAS_SIZE && y < CANVAS_SIZE, "Coordinates out of bounds");
        _;
    }

    function setPixel(uint256 x, uint256 y, string memory color) public withinBounds(x, y) {
        canvas[x][y] = color;
    }
}
