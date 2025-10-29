// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract BlockNote {
    // Mapping to store array of notes for each user
    mapping(address => string[]) private userNotes;

    // Event to notify that a note has been added
    event NoteAdded(address indexed user, uint256 noteId, string note);

    function addNote(string memory _note) public {
        userNotes[msg.sender].push(_note);
        emit NoteAdded(msg.sender, userNotes[msg.sender].length - 1, _note);
    }
    function getMyNotes() public view returns (string[] memory) {
        return userNotes[msg.sender];
    }

    function getMyNoteCount() public view returns (uint256) {
        return userNotes[msg.sender].length;
    }
}
