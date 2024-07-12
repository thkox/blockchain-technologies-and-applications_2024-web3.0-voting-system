pragma solidity >=0.8.2 <0.9.0;

contract VotingSystem {
    struct Poll {
        string question;
        bool isClosed;
        mapping(address => bool) hasVoted;  // unique voters
        uint256 yesVotes;
        uint256 noVotes;
    }

    function createNewPoll() public {

    }

    function vote() public {
        
    }

    function closePoll() public {

    }

    function showPollResults() public {

    }
}