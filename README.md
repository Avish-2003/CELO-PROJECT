# 🧠 BlockNote

A simple **decentralized private notes app** built with **Solidity** — where your notes belong **only to you**.  
Each user can securely store and retrieve personal notes on the blockchain.

---
<img width="1877" height="917" alt="image" src="https://github.com/user-attachments/assets/9cb35a82-6c90-4a15-8686-9d017afdfe1d" />


## 🪶 Project Description

**BlockNote** is a lightweight smart contract designed for people who want to keep personal notes in a decentralized way.  
Every wallet address has its own set of private notes — meaning your data is stored **only under your account** and cannot be viewed or edited by others.

This project demonstrates how decentralized storage can be used for privacy-oriented personal tools.

---

## 💡 What It Does

- Lets each user **store**, **retrieve**, and **count** their personal notes.  
- Every note is linked only to the user’s wallet address.  
- The contract ensures **ownership isolation** — no one can read another user's notes.  

> 🧩 This is a great starting point for learning Solidity, mappings, and event emission.

---

## ✨ Features

✅ **Per-User Storage:**  
Each Ethereum (or Celo) address stores its own independent notes.

✅ **Note Events:**  
Emits an event every time a new note is added — great for front-end integration.

✅ **Simple API:**  
Just 3 main functions:
- `addNote(string memory _note)`
- `getMyNotes()`
- `getMyNoteCount()`

✅ **Gas-Efficient:**  
Clean, minimal logic for low transaction cost.

✅ **Fully On-Chain:**  
All data is stored directly on the blockchain (no central server).

---

## 🔗 Deployed Smart Contract

**Network:** Celo Sepolia Testnet  
**Contract Address:** [`0x9aF6B25dcFd8C810d4940fE758319cc8b52752cc`](https://celo-sepolia.blockscout.com/address/0x9aF6B25dcFd8C810d4940fE758319cc8b52752cc)

You can interact with the contract directly on **BlockScout** or through **Remix IDE** using the address above.

---

## 🧱 Smart Contract Code

```solidity
//paste your code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
 * @title BlockNote
 * @dev A simple decentralized notes storage system.
 * Each user can store and retrieve their own private notes.
 * Notes are stored per user address and are not visible to others.
 */

contract BlockNote {
    // Mapping to store array of notes for each user
    mapping(address => string[]) private userNotes;

    // Event to notify that a note has been added
    event NoteAdded(address indexed user, uint256 noteId, string note);

    /*
     * @dev Add a new note for the sender.
     * @param _note The content of the note.
     */
    function addNote(string memory _note) public {
        userNotes[msg.sender].push(_note);
        emit NoteAdded(msg.sender, userNotes[msg.sender].length - 1, _note);
    }

    /*
     * @dev Get all notes of the sender.
     * @return An array of the user's notes.
     */
    function getMyNotes() public view returns (string[] memory) {
        return userNotes[msg.sender];
    }

    /*
     * @dev Get the count of notes stored by the sender.
     */
    function getMyNoteCount() public view returns (uint256) {
        return userNotes[msg.sender].length;
    }
}
