class DebtManager
    def initialize
      @debts = Hash.new { |hash, key| hash[key] = Hash.new(0) }
    end
  
    def add_transaction(from, to, amount)
      @debts[from][to] += amount
    rescue StandardError => e
      puts "Error adding transaction: #{e.message}"
    end
  
    def query_debt(person)
      total_debt = @debts[person].values.sum
      puts "#{person} owes a total of #{total_debt}"
    rescue StandardError => e
      puts "Error querying debt: #{e.message}"
    end
  
    def query_money_owed(person)
      total_owed = @debts.sum { |_, debtors| debtors[person] }
      puts "#{person} is owed a total of #{total_owed}"
    rescue StandardError => e
      puts "Error querying money owed: #{e.message}"
    end
  
    def query_most_money_owed
      total_owed_per_person = @debts.each_with_object(Hash.new(0)) do |(_, debtors), totals|
        debtors.each { |person, amount| totals[person] += amount }
      end
      person, amount = total_owed_per_person.max_by { |_, amount| amount }
      puts "#{person} is owed the most money: #{amount}"
    rescue StandardError => e
      puts "Error querying most money owed: #{e.message}"
    end
  
    def query_most_debt
      total_debt_per_person = @debts.transform_values { |debtors| debtors.values.sum }
      person, amount = total_debt_per_person.max_by { |_, amount| amount }
      puts "#{person} owes the most money: #{amount}"
    rescue StandardError => e
      puts "Error querying most debt: #{e.message}"
    end
  
    def process_commands
      loop do
        print "Enter command: "
        input = gets.chomp
        args = input.split
  
        case args[0]
        when "add_transaction"
          if args.length != 4
            puts "Invalid number of arguments for add_transaction. Format: add_transaction from to amount"
            next
          end
          from, to, amount = args[1], args[2], args[3].to_i
          add_transaction(from, to, amount)
          puts "Transaction added: #{from} owes #{to} #{amount}"
        when "query_debt"
          if args.length != 2
            puts "Invalid number of arguments for query_debt. Format: query_debt person"
            next
          end
          query_debt(args[1])
        when "query_money_owed"
          if args.length != 2
            puts "Invalid number of arguments for query_money_owed. Format: query_money_owed person"
            next
          end
          query_money_owed(args[1])
        when "query_most_money_owed"
          query_most_money_owed
        when "query_most_debt"
          query_most_debt
        when "exit"
          break
        else
          puts "Invalid command"
        end
      end
    end
  end
  
  manager = DebtManager.new
  manager.process_commands
    