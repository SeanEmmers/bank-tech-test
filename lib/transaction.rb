# frozen_string_literal: true

class Transaction
  
  attr_reader :time, :amount, :action, :balance

  def initialize(sum, action, balance)
    @time = Time.now.strftime('%d/%m/%Y')
    @amount = sum
    @action = action
    @balance = balance
  end

  def credit?
    @action == :withdrawl ? @amount : ''
  end

  def debit?
    action == :deposit ? @amount : ''
  end
end
