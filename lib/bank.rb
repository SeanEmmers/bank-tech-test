# frozen_string_literal: true

# bank class
class Bank
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawl(amount)
    @balance -= amount
  end

  def bank_balance
    balance
  end

  private

  attr_accessor :balance
end
