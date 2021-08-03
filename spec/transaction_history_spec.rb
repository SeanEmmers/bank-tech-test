# frozen_string_literal: true

require 'transaction_history'

describe TransactionHistory do
  let(:transaction_class) { double('transaction class', new: 'transaction') }
  let(:sum) { 50 }
  let(:action) { :deposit }
  let(:balance) { 100 }
  subject(:transaction_history) { described_class.new(transaction_class) }

  describe '.add_transaction' do
    it 'adds a new transaction' do
      transaction_history.add_transaction(sum, action, balance)
      expect(transaction_history.transactions).to eq [transaction_class.new]
    end
  end
end
