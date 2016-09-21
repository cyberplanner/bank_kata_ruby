require 'transaction'

class Account
  attr_reader :balance
  attr_reader :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(num)
    @balance += num
    transaction = Transaction.new(num, @balance)
    
    @transactions << transaction
  end

  def withdraw(num)
    @balance -= num
  end

  def debit
    debit = 0
    if balance < 0
      debit = balance.abs
    end
    debit
  end

end
