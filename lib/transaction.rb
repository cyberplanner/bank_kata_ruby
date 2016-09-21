require 'account'

class Transaction
  attr_reader :date
  attr_reader :amount
  attr_reader :current_balance

  def initialize
    @date = Time.new.strftime("%d/%m/%Y")
    @amount = 0
    @current_balance = 0
  end

  def set_amount(num)
    @amount += num
  end

  def set_current_balance(num)
    @current_balance = num
  end
end
