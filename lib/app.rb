require 'account'
require 'transaction'
def account
  @account.Account.new
end
def make_deposit(num)
  @account = Account.new

end

def interactive_menu
  @account

  puts "Hello to Your Bank"
  puts "To view balance: 1"
  puts "To view transactions: 2"
  puts "To deposit money: 3"
  puts "To withdraw money: 4"

  selection = gets.chomp

  case selection
  when "1"
    "Your account balance is £#{@account.balance}"
  when "2"

  when "3"

  when "4"

  end
  # 1. print the menu and ask the user what to do
  # 2. read the input and save it into a variable
  # 3. do what the user has asked
  # 4. repeat from step 1
end
