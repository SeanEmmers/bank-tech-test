# frozen_string_literal: true

require 'statement'

describe Statement do
  describe '.title' do
    it 'prints the title' do
      expect(subject.title).to eq "    date    || credit || debit  || balance"
    end
  end

  describe '.print_statement' do
    xit 'displays the statement correctly' do
      transactions = double(:transactions)
      transaction_1 = double({ time: '03/08/2021', action: 'credit', amount: 30.00, balance: 30.00 })
      transaction_2 = double({ time: '03/08/2021', action: 'debit', amount: 20.00, balance: 10.00 })
      allow(transactions).to receive(:each).and_return([transaction_1, transaction_2])
      expect{ subject.print_statement(transactions) }.to output( 
        "date || credit || debit || balance
        03/08/2021 || || 20.00 || 10.00
        03/08/2021 || 30.00 || || 30.00"
      )
    end
  end
end
