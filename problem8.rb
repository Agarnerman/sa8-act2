class BankAccount
    attr_reader :balance
  
    def initialize(initial_balance = 0)
      @balance = initial_balance
      @transactions = []
    end
    def deposit(amount)
      raise ArgumentError, "Deposit amount must be positive" if amount <= 0
      @balance += amount
      log_transaction(f"Deposit: ${amount}")
    end
    def withdraw(amount)
      raise ArgumentError, "Withdrawal amount must be positive" if amount <= 0
      raise ArgumentError, "Insufficient funds" if @balance < amount
      @balance -= amount
      log_transaction(f"Withdrawal: ${amount}")
    end

    private
    def log_transaction(message)
      @transactions.push(message)
    end
      def get_transactions
      @transactions.dup 
    end
  end
  
  account = BankAccount.new(100)
  account.deposit(50)
  account.withdraw(25)
  puts "Balance: #{account.balance}"
  puts "Transactions:"
  account.get_transactions.each { |transaction| puts transaction }
  