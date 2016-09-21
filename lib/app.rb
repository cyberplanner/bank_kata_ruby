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
  puts "Welcome to Your Bank"
  puts "1. " + Rainbow("View balance").underline.bright
  puts "2. " + Rainbow("View transactions").underline.bright
  puts "3. " + Rainbow("Deposit").underline.bright
  puts "4. " + Rainbow("Withdraw").underline.bright
  puts "9. " + Rainbow("Exit").red.underline.bright
end

def interactive_menu
  @account = Account.new
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    puts "Your account balance is £#{@account.balance}"
  when "2"
    puts "date || credit || debit || balance"
    @account.transactions.each do |trans|
      puts "#{trans.date} || #{trans.amount} || #{trans.current_debit} || #{trans.current_balance}"
    end
  when "3"
    puts "How much would you like to deposit: "
    input = gets.chomp.to_i
    @account.deposit(input)
    puts "Thanks! £#{input} were added to your balance. current balance: £#{@account.balance}"
  when "4"
    puts "How much would you like to withdraw: "
    input = gets.chomp.to_i
    @account.withdraw(input)
    puts "Thanks! £#{input} were deducted from your balance. current balance: £#{@account.balance}"

  when "9"
    termination
  end
end

interactive_menu
