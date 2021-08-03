# frozen_string_literal: true

require 'statement'

describe Statement do
  describe '.print_statement' do

    it 'displays the statement correctly' do
      transaction_history = double('transaction_history')
      expect(subject.print_statement(transaction_history)).to eq 
    end
  end
end
