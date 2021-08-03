class Balance

  def initialize
    @balance = 0
  end

  def display_balance
    balance
  end

  def increase_balance(sum)
    @balance += sum
  end

  def reduce_balance(sum)
    @balance -= sum
  end

  private

  attr_accessor :balance

end
