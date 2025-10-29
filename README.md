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

    }
}
