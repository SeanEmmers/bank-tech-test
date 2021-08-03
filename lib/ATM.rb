require_relative 'transaction_history'
require_relative 'statement'
require_relative 'balance'

class ATM

  attr_accessor :transaction_history

  def initialize(transaction_history = TransactionHistory.new, statement = Statement.new, balance = Balance.new)
    @transaction_history = transaction_history
    @statement = statement
    @balance = balance
  end

  def deposit(sum)
    balance.increase_balance(sum)
    @transaction_history.add_transaction(sum, :deposit, balance.display_balance)
  end

  def withdrawl(sum)
    raise "You cannot withdraw more than your total balance" if (balance.display_balance - sum) < 0
    balance.reduce_balance(sum)
    @transaction_history.add_transaction(sum, :withdrawl, balance.display_balance)
  end

  def print_statement(transaction_history)
    statement.print_statement(transaction_history)
  end

  private 

  attr_accessor :balance, :statement

end