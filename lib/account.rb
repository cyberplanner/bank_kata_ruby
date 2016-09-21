require 'transaction'

class Account
  attr_reader :balance
  attr_reader :transfers
  def initialize
    @balance = 0
    @transfers = []
  end

  def deposit(num)
    @balance += num
    
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
