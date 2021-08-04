# frozen_string_literal: true

# transaction class
class Transaction
  attr_reader :time, :amount, :action, :balance

  def initialize(sum, action, balance)
    @time = Time.now.strftime('%d/%m/%Y')
    @amount = sum
    @action = action
    @balance = balance
  end

  def credit?
    @action == :credit ? @amount : '   '
  end

  def debit?
    action == :deposit ? @amount : '   '
  end
end
