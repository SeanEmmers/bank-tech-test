require_relative 'transaction_history'
require_relative 'statement'

class Actions

  attr_accessor :transaction_history

  def initialize(transaction_history = TransactionHistory.new, statement = Statement.new)
    @transaction_history = transaction_history
    @statement = statement
  end

  def deposit(sum)
    @transaction_history.increase_balance(sum)
    @transaction_history.add_transaction(sum, :deposit)
  end

  def withdrawl(sum)
    raise "You cannot withdraw more than your total balance" if (transaction_history.balance - sum) < 0
    @transaction_history.reduce_balance(sum)
    @transaction_history.add_transaction(sum, :withdrawl)
  end

  def print_statement(transaction_history)
    statement.print_statement(transaction_history)
  end

  private 

  attr_accessor :balance, :statement

end