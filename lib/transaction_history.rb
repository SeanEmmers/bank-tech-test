# frozen_string_literal: true

# transaction history class
require_relative 'transaction'

class TransactionHistory

  attr_reader :transactions
  
  def initialize(transaction = Transaction)
    @transactions = []
    @transaction = transaction
  end

  def add_transaction(sum, action, balance)
    transactions << @transaction.new(sum, action, balance)
  end

  private

  attr_writer :transactions, :transaction
end
