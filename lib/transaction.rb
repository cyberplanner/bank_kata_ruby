require 'account'

class Transaction
  attr_reader :date
  attr_reader :amount
  attr_reader :current_balance
  attr_reader :current_debit

  def initialize(amount = 0, current_balance = 0)
    @date = Time.new.strftime("%d/%m/%Y")
    @amount = amount
    @current_balance = current_balance
    @current_debit = 0
  end

  def set_amount(num)
    @amount += num
  end

  def set_current_balance(num)
    @current_balance = num
  end

  def set_current_debit(num)
    @debit = num
  end
end
