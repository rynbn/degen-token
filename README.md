# DegenToken Contract

## Overview:
DegenToken is a Solidity smart contract that implements a basic ERC20 token with additional functionalities for buying items using the token. It allows users to mint tokens, buy items, burn tokens, and manage items through ownership.

## Usage:
To deploy and interact with this contract, you can use Remix Ethereum IDE, a powerful online tool for writing, compiling, and deploying Ethereum smart contracts. Follow these steps:

1. **Open Remix Ethereum IDE**: Navigate to the Remix website ([remix.ethereum.org](https://remix.ethereum.org/)).
2. **Create a New File**: Click on the '+' icon in the file explorer panel to create a new file.
3. **Copy and Paste Contract Code**: Copy the Solidity code of the `DegenToken.sol` contract provided in this repository and paste it into the new file in Remix.
4. **Compile the Contract**: In the Remix interface, go to the 'Solidity Compiler' tab and compile the contract by clicking the 'Compile ErrorHandlingExample.sol' button.
5. **Deploy the Contract**: Click on the 'Deploy' button to deploy the contract to the selected environment. This will create an instance of the contract on the blockchain.
6. **Interact with the Contract**: Once deployed, you can interact with the contract using the provided functions:
- Mint tokens using the `mint` function to supply tokens to users.
- Define and add items using the `addItem` function, specifying the item ID, name, and price.
- Users can buy items using the `buyItem` function by specifying the item ID and quantity they want to purchase.
- Items bought by users are stored in the contract, and ownership of items can be managed by the contract owner.
- Users can burn their tokens using the `burn` function if they wish to destroy them.

## Functionalities:
- **Minting Tokens:** The owner of the contract can mint new DegenToken tokens using the `mint` function.
- **Buying Items:** Users can purchase items using their DegenToken tokens. The contract maintains a mapping of items, and users can buy items by calling the `buyItem` function.
- **Burning Tokens:** Users can burn their DegenToken tokens using the `burn` function. This functionality allows users to remove tokens from circulation.
- **Item Management:** The contract allows the owner to add new items using the `addItem` function and update the prices of existing items using the `updateItemPrice` function. Items are represented as a struct containing a name and a price.
- **Ownership:**  The contract inherits from OpenZeppelin's `Ownable` contract, ensuring that certain functions can only be called by the contract owner. This includes minting tokens, adding items, and updating item prices.


## **Authors**

- Ryan Lester Aban
- email: 422004489@ntc.edu.ph

## **License**
This project is licensed under the Ryan Lester Aban License
