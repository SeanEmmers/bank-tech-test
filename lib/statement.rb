class Statement

  def print_statement(transaction_history)
    puts "date || credit || debit || balance \n" 
    i = transaction_history.transaction_history.count - 1
     until i == -1 do
      puts " #{transaction_history.transaction_history[i].time} || #{transaction_history.credit?(i)} || #{transaction_history.debit?(i)} ||  #{transaction_history.transaction_history[i].balance} "
      i -= 1
    end
  end 

end