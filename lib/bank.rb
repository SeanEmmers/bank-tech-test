# frozen_string_literal: true

# bank class
class Bank
  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_history << { date: Time.now.strftime("%d/%m/%Y"), action: :deposit, amount: amount, balance: @balance }
  end

  def withdrawl(amount)
    raise "You cannot withdraw more than your total balance" if (@balance - amount) < 0
    @balance -= amount
    @transaction_history << { date: Time.now.strftime("%d/%m/%Y"), action: :withdrawl, amount: amount, balance: @balance}
  end

  def statement
    puts "date || credit || debit || balance \n" 
    i = transaction_history.count - 1
     until i == -1 do
      puts "#{transaction_history[i][:date]} || #{credit?(i)} || #{debit?(i)} ||  #{transaction_history[i][:balance]} "
      i -= 1
    end
  end 

  def credit?(trns_nmbr)
    transaction_history[trns_nmbr][:action] == :withdrawl ? transaction_history[trns_nmbr][:amount] : ""
  end

  def debit?(trns_nmbr)
    transaction_history[trns_nmbr][:action] == :deposit ? transaction_history[trns_nmbr][:amount] : ""
  end

  def bank_balance
    balance
  end

  private

  attr_accessor :balance, :transaction_history

end
