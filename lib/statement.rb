# frozen_string_literal: true

# statement class
class Statement

  def title
    "date || credit || debit || balance \n"
  end

  def print_statement(transactions)
    puts title
     transactions.each { |transaction|
      puts " #{transaction.time} || #{transaction.credit?} || #{transaction.debit?} ||  #{transaction.balance} \n"
     }
  end


end
