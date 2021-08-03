require_relative 'transaction'

class TransactionHistory

  def initialize(transaction = Transaction)
    @transaction_history = []
    @transaction = transaction
  end

  def add_transaction(sum, action, balance)
    transaction_history << transaction.new(sum, action, balance)
  end

  attr_accessor :transaction_history, :transaction

end