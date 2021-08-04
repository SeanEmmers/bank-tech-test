# frozen_string_literal: true

# statement class
class Statement
  def title
    "    date    || credit || debit || balance"
  end

  def print_statement(transactions)
    puts title
    transactions.reverse_each do |transaction|
      puts " #{transaction.time} ||   #{transaction.credit?}  ||  #{transaction.debit?}  ||   #{transaction.balance} "
    end
  end
end
