# Create ERC20 Token Project(Degen Token)

## Description
For this project we have to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:<br/>
Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.<br/>
Transferring tokens: Players should be able to transfer their tokens to others.<br/>
Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.<br/>
Checking token balance: Players should be able to check their token balance at any time.<br/>
Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.<br/>
<br/>
This is simple ERC20 Standers Token named as `Degen` with symbol `DGN`, in this token the contract owner is able to mint tokens to a provided address, user is able to check balance,redeem token for store items and any user is able to burn and transfer tokens.

## Code Explaination
Imported two contracts from the `OpenZeppelin` library. `ERC20.sol` provides the base implementation for the ERC20 token standard, and `Ownable.sol` provides functionality to manage ownership of the contract.<br/>
Then defined `tokenForDegenGaming` contract, which inherits from the ERC20 and Ownable contracts. This means that the `tokenForDegenGaming` contract will have access to the functions and state variables defined in these base contracts.<br/>
Then defined a `constructor` which calls the constructor of the ERC20 contract, passing in the token name `"Degen"` and symbol `"DGN"`. <br/>
The `_mint function` is then used to create and assign tokens to the contract recipient's address and passed the total supply and decimal value..<br/>
The `mint_Token function` allows the contract owner to mint (create) new tokens and assign them to a specified address. The onlyOwner modifier, inherited from the Ownable contract, ensures that only the contract owner can call this function.<br/>
The`burn_Tokens function` allows any token holder to burn (destroy) a certain amount of their tokens. The _burn function is used to remove the specified amount of tokens from the caller's balance.<br/>
The`transfer_Tokens function` allows users to transfer tokens to another address. It checks whether the sender has a sufficient balance before performing the transfer.<br/>
The`redeem_Tokens function` allows users to burn their tokens, reducing their balance. It checks whether the sender has a sufficient balance before performing the burn.<br/>
The`Token_Balance_Of_Account function` enables users to check their token balance.<br/>
The`add_new_item function` lets the owner add new items to the gaming store's inventory. Each item is defined by its name, price, and available stock.<br/>
The`viewStoreInventory function` returns an array of all items in the store's inventory. Users can view the available items and their details..<br/>
The`redeem_item function` allows users to redeem items from the store using their tokens. It checks whether the item is available in stock, whether the user has a sufficient token balance, transfers tokens to the owner, and burns tokens from the user. This simulates an in-game purchase.<br/>


## Getting Started
1. We need to connect our metamask wallet to the Fuji Testnet, and add the network to your wallet. Here’s all the information that a wallet like Metamask requires to connect to a chain:<br/>
Network Name: Avalanche Fuji C-Chain New RPC URL: https://api.avax-test.network/ext/bc/C/rpc ChainID: 43113 Symbol: AVAX Explorer: https://testnet.snowtrace.io/
2. Open the `Remix online Solidity IDE` in your browser.
3. Create a Solidity file inside the remix IDE  named as `DegenToken.sol` and copy the contract code inside it.
4. Compile the contract by selecting the appropriate Solidity version and clicking the `"Compile"` button.
5. Click on the `"Deploy & Run Transactions"` tab.
6. Select Environment as injected provider to deploy contract on fuji testnet using metamask.
7. Click the `"Deploy"` button.
8. Once the contract is deployed, you'll see the contract address and its functions in the `"Deployed Contracts"` section.
9. You can now interact with the deployed contract using its functions in the Remix interface, you can `Mint`, `Burn` and `Transfer` `Redeem` the tokens.
10. You can also see details about the `token name`, `token symbol`, `total supply`, `decimals` etc.

## Authors
Ramesh 
[@ramesh](https://www.linkedin.com/in/ramesheorann/)

## License
tokenForDegenGaming Contract is released under the [MIT License](LICENSE).
