# frozen_string_literal: true

# statement class
class Statement
  def title
    "    date    || credit || debit  || balance"
  end

  def print_statement(transactions)
    puts title
    transactions.reverse_each do |transaction|
      puts " #{display_time(transaction.time)} || #{check_credit(transaction)} || #{check_debit(transaction)} || #{display_amount(transaction.balance)} "
    end
  end

  private

  def display_time(time)
    time.strftime('%d:%m:%Y')
  end

  def check_credit(transaction)
    transaction.credit? ? display_amount(transaction.amount) : '      '
  end

  def check_debit(transaction)
    transaction.debit? ? display_amount(transaction.amount) : '      '
  end

  def display_amount(amount)
    '%.2f' % amount
  end

end
