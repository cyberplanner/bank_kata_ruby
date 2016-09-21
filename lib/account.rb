require_relative 'transaction'

class Account
  attr_reader :balance
  attr_reader :transactions
  attr_reader :debit

  def initialize
    @balance = 0
    @debit = 0
    @transactions = []
  end

  def debit
    if balance < 0
      @debit = balance.abs
    end
    @debit
  end

  def deposit(num)
    @balance += num
    transaction = Transaction.new(num, @balance)
    transaction.set_current_debit(debit)
    @transactions << transaction
  end

  def withdraw(num)
    @balance -= num
    transaction = Transaction.new(num, @balance)
    transaction.set_current_debit(debit)
    @transactions << transaction
  end

end
