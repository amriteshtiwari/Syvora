# DebtManager

DebtManager is a Ruby-based command-line application to manage and query financial transactions between individuals. The application allows you to add transactions and query various financial insights such as total debt of a person, total money owed to a person, the person with the most money owed to them, and the person who owes the most money.

## Approach

The DebtManager application uses a simple in-memory hash structure to store debts between individuals. It supports the following functionalities:

1. **Add Transaction**: Adds a transaction where one person owes another person a specified amount.
2. **Query Debt**: Queries the total debt of a specified person.
3. **Query Money Owed**: Queries the total money owed to a specified person.
4. **Query Most Money Owed**: Identifies the person to whom the most money is owed.
5. **Query Most Debt**: Identifies the person who owes the most money to others.

### Data Structure

The debts are stored in a nested hash structure:
- The outer hash's keys represent individuals who owe money.
- The inner hash's keys represent individuals to whom money is owed, with the values representing the amount owed.

Example structure:
```ruby
{
  'A' => {'B' => 50, 'C' => 20},
  'B' => {'C' => 30}
}
```
In the above example, 'A' owes 'B' 50 and 'C' 20, while 'B' owes 'C' 30.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/amriteshtiwari/Syvora.git
   cd Syvora/Problem1_solution_financial_transactions
   ```

2. Ensure you have Ruby installed on your system. You can check your Ruby version with:
   ```bash
   ruby -v
   ```

3. No additional gems are required. The application runs on plain Ruby.

## Running Online

You can also run this application in an online Ruby compiler like repl.it or OnlineGDB:

1. Open repl.it or OnlineGDB.
2. Copy the content of debt_manager.rb into the editor.
3. Run the code.
4. Interact with the CLI using the commands listed above.

## Usage

Run the `debt_manager.rb` script to start the DebtManager CLI:
```bash
ruby debt_manager.rb
```

### Available Commands

- `add_transaction A B X`: Adds a transaction where `A` owes `B` an amount `X`.
- `query_debt A`: Queries the total debt of person `A`.
- `query_money_owed B`: Queries the total money owed to person `B`.
- `query_most_money_owed`: Identifies the person to whom the most money is owed.
- `query_most_debt`: Identifies the person who owes the most money to others.
- `exit`: Exits the application.

### Example Session

Here is a sample session demonstrating the usage of the commands:

```plaintext
Enter command: add_transaction M N 20
Transaction added: M owes N 20
Enter command: add_transaction L M 70
Transaction added: L owes M 70
Enter command: add_transaction N L 40
Transaction added: N owes L 40
Enter command: add_transaction N K 100
Transaction added: N owes K 100
Enter command: add_transaction M N 10
Transaction added: M owes N 10
Enter command: add_transaction N M 5
Transaction added: N owes M 5
Enter command: query_debt M
M owes a total of 30
Enter command: query_money_owed N
N is owed a total of 30
Enter command: query_most_money_owed
K is owed the most money: 100
Enter command: query_most_debt
N owes the most money: 145
Enter command: exit
```