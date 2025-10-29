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

