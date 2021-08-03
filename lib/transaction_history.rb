# frozen_string_literal: true

require_relative 'transaction'

class TransactionHistory
  def initialize(transaction = Transaction)
    @transactions = []
    @transaction = transaction
  end

  def add_transaction(sum, action, balance)
    transactions << transaction.new(sum, action, balance)
  end

  attr_accessor :transactions, :transaction
end
