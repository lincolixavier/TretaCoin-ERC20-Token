// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Simple ERC20 contract, we prefer to leave the rest of the funcionality in other contracts
contract TRTTOKEN is ERC20 {
    constructor() ERC20("Treta Coin", "TRT") {
        _mint(msg.sender, 1000000_000 * 10**decimals());
    }
}
