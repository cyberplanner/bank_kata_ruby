#!/usr/bin/env ruby
require_relative 'account'
require 'rainbow'

# def deposit(num)
#   @account.deposit(num)
# end
#
# def withdraw

def termination
  puts Rainbow("The program is now terminated! Good bye!").yellow.bright
  exit
end

def print_menu
  puts ""
  puts "Welcome to Your Bank".center(70)
  puts "-------------".center(70)
  puts "1. " + Rainbow("View balance").underline.bright
  puts "2. " + Rainbow("View transactions").underline.bright
  puts "3. " + Rainbow("Deposit").underline.bright
  puts "4. " + Rainbow("Withdraw").underline.bright
  puts "9. " + Rainbow("Exit").red.underline.bright
end

def deposit
  puts "How much would you like to deposit: "
  input = gets.chomp.to_i
  @account.deposit(input)
  puts "Thanks! £#{input} were added to your balance. current balance: £#{@account.balance}"
end

def withdraw
  puts "How much would you like to withdraw: "
  input = gets.chomp.to_i
  @account.withdraw(input)
  puts "Thanks! £#{input} were deducted from your balance. current balance: £#{@account.balance}"
end

def interactive_menu
  @account = Account.new
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_transactions
  puts "date || credit || debit || balance"
  @account.transactions.each do |trans|
    puts "#{trans.date} || #{trans.amount} || #{trans.current_debit} || #{trans.current_balance}"
  end
end

def view_balance
  puts "Your account balance is £#{@account.balance}"
end


def process(selection)
  case selection
  when "1"

  when "2"
    print_transactions
  when "3"
    deposit
  when "4"
    withdraw
  when "9"
    termination
  end
end

interactive_menu
