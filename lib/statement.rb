# frozen_string_literal: true

# statement class
class Statement

  def title
    puts "date || credit || debit || balance \n"
  end

  def transaction_count(transactions)
    transactions.count - 1
  end

  def print_statement(transactions)
    title
    i = transaction_count(transactions)
    until i.negative?
      puts " #{transactions[i].time} || #{transactions[i].credit?} || #{transactions[i].debit?} ||  #{transactions[i].balance} "
      i -= 1
    end
  end


end
