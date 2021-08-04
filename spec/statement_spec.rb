# frozen_string_literal: true

require 'statement'

describe Statement do

  describe '.title' do
    it 'prints the title' do
      expect(subject.title).to eq "date || credit || debit || balance \n"
    end
  end

  describe '.transaction_count' do
    let(:test_array) { [:item_one, :item_two, :item_three] }
    it 'counts the items in the array' do
      expect(subject.transaction_count(test_array)).to eq 4
    end
  end

  describe '.print_statement' do
    # it 'displays the statement correctly' do
    #   transaction_history = double('transaction_history')
    #   expect(subject.print_statement(transaction_history)).to eq
    # end
  end
end
