// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    // Struct to define an item
    struct Item {
        string name;
        uint256 price;
    }

    // Mapping from item ID to Item details
    mapping(uint256 => Item) public items;

    // Mapping from player address to owned items (item ID => quantity)
    mapping(address => mapping(uint256 => uint256)) public playerItems;

    // Event emitted when tokens are redeemed for items
    event TokensRedeemed(address indexed player, uint256 indexed itemId, uint256 quantity);

    // Event emitted when items are bought
    event ItemBought(address indexed buyer, uint256 indexed itemId, uint256 quantity);

    constructor() ERC20("DegenToken", "DGN") Ownable(msg.sender) {
        // Add initial items
        addItem(1, "Sword", 100); // Example item 1: Sword costs 100 GT
        addItem(2, "Shield", 150); // Example item 2: Shield costs 150 GT
        addItem(3, "Potion", 50);  // Example item 3: Potion costs 50 GT
    }


    // Minting new tokens - Only the owner can mint tokens
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Buying items - Player buys items and the items are stored for them
    function buyItem(uint256 itemId, uint256 quantity) external {
        Item memory item = items[itemId];
        require(bytes(item.name).length != 0, "Item does not exist");
        uint256 totalCost = item.price * quantity;
        require(balanceOf(msg.sender) >= totalCost, "Insufficient token balance");

        // Transfer tokens from buyer to contract
        _transfer(msg.sender, address(this), totalCost);

        // Update the player's owned items
        playerItems[msg.sender][itemId] += quantity;

        emit ItemBought(msg.sender, itemId, quantity);
    }
    

    // Burning tokens - Anyone can burn their own tokens
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Owner adds new items to the game
    function addItem(uint256 itemId, string memory name, uint256 price) public onlyOwner {
        require(bytes(items[itemId].name).length == 0, "Item already exists");
        items[itemId] = Item(name, price);
    }

    // Owner updates item price
    function updateItemPrice(uint256 itemId, uint256 newPrice) external onlyOwner {
        require(bytes(items[itemId].name).length != 0, "Item does not exist");
        items[itemId].price = newPrice;
    }
}
