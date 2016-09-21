require 'account'

class Transaction
  attr_reader :date
  attr_reader :amount
  attr_reader :current_balance

  def initialize(amount = 0, current_balance = 0)
    @date = Time.new.strftime("%d/%m/%Y")
    @amount = amount
    @current_balance = current_balance
  end

  def set_amount(num)
    @amount += num
  end

  def set_current_balance(num)
    @current_balance = num
  end
end
