pragma solidity >=0.8.2 <0.9.0;

contract VotingSystem {

    // Struct to represent a poll
    struct Poll {
        // Poll question
        string question;
        // Poll status
        bool isClosed;
        // Voters, users who have voted
        mapping(address => bool) hasVoted;
        // Poll results
        uint yesVotes;
        uint noVotes;
    }

    // State Variable
    Poll[] private polls; // Array to store the polls

    // Function to create a new poll
    function createNewPoll(string calldata _question) public {
        // Create a new poll
        Poll storage newPoll = polls.push();
        // Initialize poll's question 
        newPoll.question = _question;
        // Initialize poll's status
        newPoll.isClosed = false;
        // Initialize poll's results
        newPoll.yesVotes = 0;
        newPoll.noVotes = 0;
    }

    // Function to vote on a poll
    function castVote(uint _poll_index, bool _vote) public {
        // Check if the poll index is valid
        require(_poll_index < polls.length, "Invalid poll index");
        
        // Get the poll
        Poll storage poll = polls[_poll_index];
        
        // Check if the poll is closed
        require(!poll.isClosed, "Poll is closed");

        // Check if the voter has already voted
        require(!poll.hasVoted[msg.sender], "The user has already voted");

        // Mark the voter as voted
        poll.hasVoted[msg.sender] = true;

        // Update Poll results based on the vote
        if (_vote) {
            poll.yesVotes++;
        } else {
            poll.noVotes++;
        }
    }

    // Function to close a poll
    function closePoll(uint _poll_index) public {
        // Check if the poll index is valid
        require(_poll_index < polls.length, "Invalid poll index");

        // Get the poll
        Poll storage poll = polls[_poll_index];

        // Check if the poll is already closed
        require(!poll.isClosed, "Poll is already closed");

        // Close the poll
        poll.isClosed = true;
    }

    // Function to show poll results
    function showPollResults(uint _poll_index) public view returns (uint, uint) {
        // Check if the poll index is valid
        require(_poll_index < polls.length, "Invalid poll index");

        // Get the poll
        Poll storage poll = polls[_poll_index];

        // Return the poll results
        return (poll.yesVotes, poll.noVotes);
    }
    
}