# frozen_string_literal: true

class Statement
  def print_statement(transaction_history)
    puts "date || credit || debit || balance \n"
    i = transaction_history.count - 1
    until i.negative?
      puts " #{transaction_history[i].time} || #{transaction_history[i].credit?} || #{transaction_history[i].debit?} ||  #{transaction_history[i].balance} "
      i -= 1
    end
  end
end
