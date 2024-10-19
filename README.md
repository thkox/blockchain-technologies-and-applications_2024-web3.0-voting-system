# Blockchain Technologies and Applications (2024) - Web3.0 Voting System

## Project Overview

The **Web3.0 Voting System** is a team assignment designed for the "Blockchain Technologies and Applications" course, offered in the 8th semester of the 2023-2024 academic year at the University of Piraeus, Department of Informatics. This decentralized application (DApp) leverages blockchain technology to create a transparent, secure, and immutable voting process. Built using Solidity and deployed via the Remix IDE on the Ethereum blockchain, the system allows users to create polls, cast votes, and view results while ensuring that all votes are tamper-proof and each user can vote only once per poll.

## Course Information
- **Institution:** [University of Piraeus](https://www.unipi.gr/en/)
- **Department:** [Department of Informatics](https://cs.unipi.gr/en/)
- **Course:** Blockchain Technologies and Applications (2024)
- **Semester:** 8th

## Technologies Used

- **Solidity:** For writing smart contracts.
- **Ethereum Blockchain:** For deploying and managing the voting system.
- **Remix IDE:** For developing, deploying, and testing smart contracts on Ethereum.
- **Metamask:** For interacting with the blockchain and managing transactions.

## Features

The Web3.0 Voting System supports the following features through its smart contract:

1. **Create a New Poll**

   - Users can create a new poll with a yes/no question.
   - Each poll is added to the blockchain and is accessible to registered users.

2. **Cast a Vote**

   - Users can cast a "Yes" or "No" vote on an active poll.
   - The system ensures that each user can vote only once per poll, and their vote is permanently recorded on the blockchain.

3. **Close a Poll**

   - The poll creator or a designated user can close a poll manually, preventing any further votes from being cast.

4. **View Poll Results**

   - Users can view the total number of "Yes" and "No" votes for any closed poll, with results stored immutably on the blockchain.

## Smart Contract Structure

The smart contract is written in Solidity and consists of several key components:

- **Struct Poll:** Defines the structure of a poll, including:
    - `string question`: The poll question.
    - `bool isClosed`: Indicates if the poll is open or closed.
    - `mapping(address => bool) hasVoted`: Tracks which addresses have voted.
    - `uint yesVotes`: Total number of "Yes" votes.
    - `uint noVotes`: Total number of "No" votes.
 
- **Key Functions:**
    - `createNewPoll(string memory _question)`: Allows users to create a new poll with the specified question.
    - `castVote(uint pollIndex, bool vote)`: Enables users to cast a "Yes" (true) or "No" (false) vote for a specific poll.
    - `closePoll(uint pollIndex)`: Closes a poll, preventing further voting.
    - `showPollResults(uint pollIndex)`: Displays the results of a closed poll.

## Example Use Case

1. **Creating a Poll**

   A user creates a new poll by calling the `createNewPoll` function with the desired question:

    ```solidity
    createNewPoll("Should we implement feature X?")
    ```

2. **Voting on a Poll**

   Users can cast their vote by calling the `castVote` function and passing the poll index and their vote:

    ```solidity
    castVote(0, true);  // Vote "Yes" on poll 0
    castVote(0, false); // Vote "No" on poll 0
    ```

3. **Closing a Poll**

   Once the voting period is over, the poll can be closed using the `closePoll` function:

    ```solidity
    closePoll(0);  // Close poll 0
    ```

4. **Viewing Poll Results**

   To view the results of a poll, the `showPollResults` function is called, displaying the total number of "Yes" and "No" votes:

    ```solidity
    showPollResults(0);
    ```

    This function returns the number of votes for and against the poll's question.

## Setup Instructions

1. Clone the repository:

    ```bash
    git clone https://github.com/thkox/web3.0-voting-system.git
    ```

2. Deploy the Smart Contract:

    - Open **Remix IDE** in your browser: [Remix IDE](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.26+commit.8a97fa7a.js).
    - Create a new Solidity file and paste the smart contract code.
    - Compile the contract using the Solidity compiler.
    - Deploy the contract on a test Ethereum network (e.g., Ropsten, using Metamask or Ganache).

3. Interact with the Contract:

    - Use the Remix console to call the contract’s functions (create polls, cast votes, close polls, etc.).
    - Ensure you have sufficient test Ether in your Metamask wallet to cover gas fees when interacting with the blockchain.

## Documentation and Resources

- Full project details can be found in the [Project-documentation.pdf](./docs/Project-documentation.pdf).

## Contributors

<table>
  <tr>
    <td align="center"><a href="https://github.com/ApostolisSiampanis"><img src="https://avatars.githubusercontent.com/u/75365398?v=4" width="100px;" alt="Apostolis Siampanis"/><br /><sub><b>Apostolis Siampanis</b></sub></a><br /></td>
    <td align="center"><a href="https://github.com/thkox"><img src="https://avatars.githubusercontent.com/u/79880468?v=4" width="100px;" alt="Theodore Koxanoglou"/><br /><sub><b>Theodore Koxanoglou</b></sub></a><br /></td>
  </tr>
</table>

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
