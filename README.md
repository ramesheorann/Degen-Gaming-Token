# Create and Mint Token Project(Koku Coin Token)

## Description
This is simple ERC20 Standers Token named as `Koku Coin` with symbol `KUK` in this token the contract owner is able to mint tokens to a provided address and any user is able to burn and transfer tokens.

## Code Explaination
Imported two contracts from the `OpenZeppelin` library. `ERC20.sol` provides the base implementation for the ERC20 token standard, and `Ownable.sol` provides functionality to manage ownership of the contract.<br/>
Then defined `KokuCoin` contract, which inherits from the ERC20 and Ownable contracts. This means that the KokuCoin contract will have access to the functions and state variables defined in these base contracts.<br/>
Then defined a `constructor` which calls the constructor of the ERC20 contract, passing in the token name `"Koku Coin"` and symbol `"KUK"`. <br/>
The `_mint function` is then used to create and assign tokens to the contract deployer's address, and passed the total supply and decimal value.<br/>
`mint function` allows the contract owner to mint (create) new tokens and assign them to a specified address. The onlyOwner modifier, inherited from the Ownable contract, ensures that only the contract owner can call this function.<br/>
`burn function` allows any token holder to burn (destroy) a certain amount of their tokens. The _burn function is used to remove the specified amount of tokens from the caller's balance.<br/>
`decimals function` overrides the decimals() function from the ERC20 contract. It provides a customized number of decimal places for the token. In this case, it returns 15 as the number of decimal places.<br/>

## Getting Started
1. Open the `Remix online Solidity IDE` in your browser.
2. Create a Solidity file inside the remix IDE  named as `KokuCoin.sol` and copy the contract code inside it.
3. Compile the contract by selecting the appropriate Solidity version and clicking the `"Compile"` button.
4. Click on the `"Deploy & Run Transactions"` tab.
5. Click the `"Deploy"` button.
6. Once the contract is deployed, you'll see the contract address and its functions in the `"Deployed Contracts"` section.
7. You can now interact with the deployed contract using its functions in the Remix interface, you can `Mint`, `Burn` and `Transfer` the tokens.
8. You can also see details about the `token name`, `token symbol`, `total supply`, `decimals` etc.

## Authors
Ramesh 
[@ramesh](https://www.linkedin.com/in/sonusheorann/)

## License
KokuCoin Contract is released under the [MIT License](LICENSE).
