## Problem 1: Financial Transactions

### Overview
You are given a list of transactions between individuals in the form `A,B,X`, where `A` owes `B` `X` amount of money. Your task is to design a system that processes these transactions and provides insights into the financial relationships between individuals.

### Functional Requirements
1. **Process Transactions**: The system must take a list of transactions in the form `A,B,X` and process them to update the respective debts between the individuals involved.
2. **Query Debt Owed by Person**: A user must be able to query how much debt a specific person owes to all other users.
3. **Query Money Owed to Person**: A user must be able to query how much money is owed to a specific person by all other users.
4. **Query Person with Most Money Owed**: The system should be able to identify the person to whom the most money is owed.
5. **Query Person with Most Debt**: The system should be able to identify the person who owes the most money to others.
6. **Command Line Interface**: The system should provide a command-line interface for users to input transactions and query the insights mentioned above.

### Non-Functional Requirements
1. **Scalability**: The system should be able to handle a large number of transactions efficiently.
2. **Durability**: Ensure that the data is saved and retrieved reliably.
3. **Usability**: The command-line interface should be user-friendly with clear instructions and prompts.

### Input
A CSV file or a list of strings representing the transactions. For example:

M , N , 20 <br>
L , M , 70  <br>
N , L , 40 <br>
N , K , 100 <br>
M , N , 10 <br>
N , M , 5 <br>

markdown


### Possible Commands in Command Line Interface
- `add_transaction A,B,X`: Adds a transaction where A owes B an amount X.
- `query_debt A`: Queries the total debt of person A.
- `query_money_owed B`: Queries the total money owed to person B.
- `query_most_money_owed`: Identifies the person with the most money owed.
- `query_most_debt`: Identifies the person with the most debt.

### Constraints
- All individuals are represented by a single character or a string without commas.
- The amount of money involved in transactions is always a non-negative integer.

---

## Problem 2: Maximum Average Subarray

### Overview
Given an array consisting of `n` integers, find the contiguous subarray whose length is greater than or equal to `k` that has the maximum average value. Output the maximum average value.

### Example

Input: {1,12,-5,-6,50,3}, k = 4
Output: 12.75
Explanation: When length is 5, maximum average value is 10.8, when length is 6, maximum average value is 9.16667. Thus, return 12.75.

yaml


### Note
- `1 <= k <= n <= 10,000`
- Elements of the given array will be in the range `[-10,000, 10,000]`.
- The answer with the calculation error less than `10^-5` will be accepted.

---