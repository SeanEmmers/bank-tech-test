# frozen_string_literal: true

# balance class
class Balance
  def initialize
    @bank_balance = 0
  end

  def balance
    bank_balance
  end

  def increase_balance(sum)
    @bank_balance += sum
  end

  def reduce_balance(sum)
    @bank_balance -= sum
  end

  private

  attr_accessor :bank_balance
end
