require_relative 'transaction'

class TransactionHistory

  def initialize(transaction = Transaction)
    @transaction_history = []
    @transaction = transaction
    @balance = 0
  end

  def credit?(trns_nmbr)
    transaction_history[trns_nmbr].action == :withdrawl ? transaction_history[trns_nmbr].amount : ""
  end

  def debit?(trns_nmbr)
    transaction_history[trns_nmbr].action == :deposit ? transaction_history[trns_nmbr].amount : ""
  end

  def add_transaction(sum, action)
    transaction_history << transaction.new(sum, action, balance)
  end

  def increase_balance(sum)
    @balance += sum
  end

  def reduce_balance(sum)
    @balance -= sum
  end

  def balance
    balance
  end

  attr_accessor :transaction_history, :transaction, :balance

end