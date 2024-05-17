# DegenToken Contract

## Overview:
DegenToken is a Solidity smart contract that implements a basic ERC20 token with additional functionalities for buying items using the token. It allows users to mint tokens, buy items, burn tokens, and manage items through ownership.

## Usage:
To use the DegenToken contract, follow these steps:

1. Deploy the contract to a supported Ethereum network.
2. Mint tokens using the `mint` function to supply tokens to users.
3. Define and add items using the `addItem` function, specifying the item ID, name, and price.
4. Users can buy items using the `buyItem` function by specifying the item ID and quantity they want to purchase.
5. Items bought by users are stored in the contract, and ownership of items can be managed by the contract owner.
6. Users can burn their tokens using the `burn` function if they wish to destroy them.

## Functionalities:
- **Minting Tokens:** The owner of the contract can mint new DegenToken tokens using the `mint` function.
- **Buying Items:** Users can purchase items using their DegenToken tokens. The contract maintains a mapping of items, and users can buy items by calling the `buyItem` function.
- **Burning Tokens:** Users can burn their DegenToken tokens using the `burn` function. This functionality allows users to remove tokens from circulation.
- **Item Management** The contract allows the owner to add new items using the `addItem` function and update the prices of existing items using the `updateItemPrice` function. Items are represented as a struct containing a name and a price.
- **Ownership**  The contract inherits from OpenZeppelin's `Ownable` contract, ensuring that certain functions can only be called by the contract owner. This includes minting tokens, adding items, and updating item prices.


## **Authors**

- Ryan Lester Aban
- email: 422004489@ntc.edu.ph

## **License**
This project is licensed under the Ryan Lester Aban License
