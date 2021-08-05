require 'atm'

describe ATM do

  it 'can be used as intended' do
    atm = ATM.new
    atm.deposit(2000)
    atm.withdraw(500)
    atm.deposit(500)
    atm.withdraw(1000)

    expect(atm.show_balance).to eq 1000
    expect { atm.print_statement }.to output(
     "   date    || credit || debit  || balance
      05:08:2021 || 1000.00 ||        || 1000.00 
      05:08:2021 ||        || 500.00 || 2000.00 
      05:08:2021 || 500.00 ||        || 1500.00 
      05:08:2021 ||        || 2000.00 || 2000.00" 
    ).to_stdout
    
    end

end