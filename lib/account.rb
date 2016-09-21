class Account
  attr_reader :balance

  def initialize
    @balance = 0
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
