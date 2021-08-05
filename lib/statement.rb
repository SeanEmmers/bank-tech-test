# frozen_string_literal: true

# statement class
class Statement
  def title
    "    date    || credit || debit || balance"
  end

  def print_statement(transactions)
    puts title
    transactions.reverse_each do |transaction|
      puts " #{transaction.time.strftime('%d:%m:%Y')} ||   #{check_credit(transaction)}  ||  #{check_debit(transaction)}  ||   #{transaction.balance} "
    end
  end

  def check_credit(transaction)
    transaction.credit? ? transaction.amount : '   '
  end

  def check_debit(transaction)
    transaction.debit? ? transaction.amount : '   '
  end

end
