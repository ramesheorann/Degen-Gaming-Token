// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract tokenForDegenGaming is ERC20, Ownable {
    struct storeItem {
        string Name;
        uint256 Price;
        uint256 availableStock;
    }

    mapping(uint256 => storeItem) public storeInventory;
    uint256 public total_items;

    constructor() ERC20("Degen", "DGN") {
        _mint(msg.sender, 1 * 10 ** decimals());
    }

    function mint_Token(address recipient_address, uint256 amount) public onlyOwner {
        _mint(recipient_address, amount);
    }

    function transfer_Tokens(address receiver_address, uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "You don't have enough Degen Tokens to Transfer");
        _transfer(msg.sender, receiver_address, amount);
    }

    function redeem_Tokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "You don't have enough Degen Tokens to Redeem");
        _burn(msg.sender, amount);
    }

    function Token_Balance_Of_Account(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function burn_Tokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "You don't have enough Degen Tokens to Burn");
        _burn(msg.sender, amount);
    }

    function add_new_item(string memory Name, uint256 Price, uint256 availableStock) public onlyOwner {
        require(availableStock > 0, "Stock should be atleast 1");
        total_items++;
        storeInventory[total_items] = storeItem(Name, Price, availableStock);
    }

    function viewStoreInventory() public view returns (storeItem[] memory) {
        storeItem[] memory items = new storeItem[](total_items);
        for (uint256 i = 1; i <= total_items; i++) {
            items[i - 1] =storeInventory[i];
        }
        return items;
    }

    function redeem_item(uint256 itemNumber) public {
        require(itemNumber > 0 && itemNumber <= total_items, "Invalid Item Number");
        storeItem storage item = storeInventory[itemNumber];
        require(item.availableStock > 0, "Out of stock");
        require(balanceOf(msg.sender) >= item.Price, "Insufficient Balance to redeem item");

        _transfer(msg.sender, owner(), item.Price);
        _burn(msg.sender, item.Price);
        item.availableStock--;
    }
}
