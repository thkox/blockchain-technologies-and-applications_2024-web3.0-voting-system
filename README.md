# Blockchain Technologies and Applications (2024) - Web3.0 Voting System

## Project Overview

The Web3.0 Voting System is a decentralized application (DApp) that leverages the power of blockchain technology to create transparent, secure, and immutable voting processes. This project was built using Solidity and deployed via the Remix IDE on the Ethereum blockchain. The system allows users to create polls, cast votes, and view results while ensuring that votes are tamper-proof and each user can only vote once per poll.

This application was developed as part of the "Blockchain Technologies and Applications" course in the 8th semester of the academic year 2023-2024 at the University of Piraeus, Department of Informatics.

## Course Information

- **Institution:** University of Piraeus
- **Department:** Department of Informatics
- **Course:** Blockchain Technologies and Applications (2024)
- **Semester:** 8th

## Technologies Used

- **Solidity:** For writing smart contracts.
- **Ethereum Blockchain:** For deploying and managing the voting system.
- **Remix IDE:** For developing, deploying, and testing the smart contracts.

## Features

The Web3.0 Voting System allows for the following features through smart contracts:

1. **Create a New Poll**

    - A user can create a new poll with a question that requires a "Yes" or "No" response.
    - Polls are added to the blockchain and can be interacted with by registered users.

2. **Cast a Vote**

    - Users can cast a "Yes" or "No" vote on an active poll.
    - A user can vote only once per poll, and their vote is recorded immutably on the blockchain.

3. **Close a Poll**

    - The poll creator or a designated user can manually close a poll, preventing any further votes from being cast.

4. **View Poll Results**

    - Users can view the results of any closed poll, with the total number of "Yes" and "No" votes displayed.
  
## Smart Contract Structure

The smart contract is written in Solidity and consists of the following key components:

- **Struct Poll:** Defines the structure of a poll, including:
    - `string question`: The poll question.
    - `bool isClosed`: Status indicating if the poll is open or closed.
    - `mapping(address => bool) hasVoted`: Tracks which addresses have voted.
    - `uint yesVotes`: Total number of "Yes" votes.
    - `uint noVotes`: Total number of "No" votes.
 
- **Functions:**
    - `createNewPoll(string memory _question)`: Creates a new poll with the given question.
    - `castVote(uint pollIndex, bool vote)`: Allows users to cast a vote (true for "Yes", false for "No") on a specific poll.
    - `closePoll(uint pollIndex)`: Closes a poll to prevent further voting.
    - `showPollResults(uint pollIndex)`: Displays the results of the poll.
 
## Example Use Case

1. **Creating a Poll**

    A user can create a new poll by calling the createNewPoll function with the desired question. For example:

    ```solidity
    createNewPoll("Should we implement feature X?")
    ```

2. **Voting on a Poll**

    Participants can cast their vote by calling the castVote function and passing the index of the poll and their vote:

    ```solidity
    castVote(0, true);  // Vote "Yes" on poll 0
    castVote(0, false); // Vote "No" on poll 0
    ```

3.  **Closing a Poll**

    Once the voting period is over, the poll can be closed using the closePoll function:

    ```solidity
    closePoll(0);  // Close poll 0
    ```

    After closing, no more votes can be cast for that poll.

4.  **Viewing Poll Results**

    To view the results of a poll, the showPollResults function is called, which returns the total "Yes" and "No" votes:

    ```solidity
    showPollResults(0);
    ```

    This will display the number of votes for and against the question.

## Setup Instructions

1. Clone the repository:

    ```bash
    git clone https://github.com/thkox/web3.0-voting-system.git
    ```

2. Deploy Smart Contract:

    - Open **Remix IDE** in your browser: [Remix IDE](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.26+commit.8a97fa7a.js).
    - Create a new Solidity file and paste the smart contract code.
    - Compile the contract using the Solidity compiler.
    - Deploy the contract on a test network (e.g., using Metamask with Ropsten or Ganache).

3. Interact with the Contract:

    - Use Remix’s console to call the contract’s functions (create polls, vote, close polls, etc.).
    - For real blockchain interaction, ensure you have enough test Ether in your wallet for gas fees.

## Contributors

<table>
  <tr>
    <td align="center"><a href="https://github.com/ApostolisSiampanis"><img src="https://avatars.githubusercontent.com/u/75365398?v=4" width="100px;" alt="Apostolis Siampanis"/><br /><sub><b>Apostolis Siampanis</b></sub></a><br /></td>
    <td align="center"><a href="https://github.com/thkox"><img src="https://avatars.githubusercontent.com/u/79880468?v=4" width="100px;" alt="Theodore Koxanoglou"/><br /><sub><b>Theodore Koxanoglou</b></sub></a><br /></td>
  </tr>
</table>

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
