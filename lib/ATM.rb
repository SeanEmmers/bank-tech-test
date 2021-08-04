# frozen_string_literal: true

require_relative 'transaction_history'
require_relative 'statement'
require_relative 'balance'
# ATM class
class ATM
  def initialize(transaction_history = TransactionHistory.new, statement = Statement.new, balance = Balance.new)
    @transaction_history = transaction_history
    @statement = statement
    @balance = balance
  end

  def deposit(sum)
    balance.increase_balance(sum)
    @transaction_history.add_transaction(sum, :deposit, balance.balance)
  end

  def withdraw(sum)
    raise 'You cannot withdraw more than your total balance' if (balance.balance - sum).negative?

    balance.reduce_balance(sum)
    @transaction_history.add_transaction(sum, :credit, balance.balance)
  end

  def print_statement
    statement.print_statement(transaction_history.transactions)
  end

  def show_balance
    balance.balance
  end

  private

  attr_accessor :balance, :statement, :transaction_history
end
