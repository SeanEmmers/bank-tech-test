# frozen_string_literal: true

# bank class
class Bank
  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_history << {deposit: amount}
  end

  def withdrawl(amount)
    @balance -= amount
    @transaction_history << {withdrawl: amount}
  end

  def statement
    transaction_history
  end 

  def bank_balance
    balance
  end

  private

  attr_accessor :balance, :transaction_history
end
