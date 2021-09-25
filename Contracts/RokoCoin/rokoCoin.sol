// SPDX-License-Identifier: GPL-3.0
// Based on the Subcurrency example from https://docs.soliditylang.org/en/v0.8.7/introduction-to-smart-contracts.html
pragma solidity ^0.8.4;

contract RokoCoin {

    address public owner;       // The person who created the contract and is allowed to mint new coins
    mapping (address => uint) public balances; // Amount of RokoCoins per Address


    // Constructor code is only run when the contract
    // is created
    constructor() {
        owner = msg.sender;
    }

    // Sends an amount of newly created coins to an address
    // Can only be called by the contract creator
    function mint(address receiver, uint amount) public {
        
        // TODO: 1. Check if the sender of the message is the owner
        // Tip: Use the >> require(<condition>, <error_message>) << function 
        
        // TODO: 2. Update the balance of that sender/ owner with the desired amount
        // Tip: Access values in balances with >> balances[<address>] <<
    }

    // Sends an amount of existing coins
    // from any caller to an address
    function send(address receiver, uint amount) public {
        
        // TODO: 3. Check if the sender of the message has at least the required amount of RokoCoins in his or her balance. 
        // Otherwise: Provide an error message
        
        
        // TODO: 4. Transfer the amount from the sender to the receiver by updating the respective balances

    }
    
    // Returns the balance of a specific address
    function getBalance(address addressToCheck) view public returns (uint) {
        return balances[addressToCheck];
    }
}

