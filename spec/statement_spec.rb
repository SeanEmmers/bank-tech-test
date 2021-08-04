# frozen_string_literal: true

require 'statement'

describe Statement do
  describe '.title' do
    it 'prints the title' do
      expect(subject.title).to eq "date || credit || debit || balance \n"
    end
  end

  # describe '.print_statement' do
  #   let(:test_array) { [:item_one, :item_two, :item_three] }
  #   it 'displays the statement correctly' do
  #     expect(subject.print_statement(:test_array)).to eq
  #   end
  # end
end
