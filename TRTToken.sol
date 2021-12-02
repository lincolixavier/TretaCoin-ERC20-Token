// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Simple ERC20 contract, we prefer to leave the rest of the funcionality in other contracts
contract TRTTOKEN is ERC20 {
   address public admin;

    constructor() ERC20("Treta Coin", "TRT") {
        _mint(msg.sender, 10000 * 10 ** decimals());
        admin = msg.sender;
    }

    function mint(address to uint amount) external{
        require(msg.sender == admin, 'only admin');
        _mint(to, amount)
    }

    function burn(uint amount) external{
        _burn(msg.sender, amount)
    }
}
