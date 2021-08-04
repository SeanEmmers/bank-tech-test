# frozen_string_literal: true

require 'transaction'

describe Transaction do
  let(:sum) { 50 }
  let(:action) { :deposit }
  let(:credit_action) { :credit }
  let(:balance) { 50 }
  subject(:transaction) { described_class.new(sum, action, balance) }
  subject(:credit_transaction) { described_class.new(sum, credit_action, balance) }
  let(:time) { Time.now.strftime('%d/%m/%Y') }

  it 'creates a transaction' do
    expect(transaction.time).to eq time
    expect(transaction.amount).to eq sum
    expect(transaction.balance).to eq balance
    expect(transaction.action).to eq action
    expect(transaction).to be_a Transaction
  end

  describe '.debit?' do
    it 'returns the action if true' do
      expect(transaction.debit?).to eq sum
    end
    it 'returns an empty string if false' do
      expect(credit_transaction.debit?).to eq ''
    end
  end

  describe '.credit?' do
    it 'returns the action if true' do
      expect(transaction.credit?).to eq ''
    end
    it 'returns an empty string if false' do
      expect(credit_transaction.credit?).to eq sum
    end
  end
end
