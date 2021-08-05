# frozen_string_literal: true

require 'transaction'

describe Transaction do
  let(:sum) { 50 }
  let(:action) { :deposit }
  let(:credit_action) { :credit }
  let(:balance) { 50 }
  subject(:transaction) { described_class.new(sum, action, balance) }
  subject(:credit_transaction) { described_class.new(sum, credit_action, balance) }
  let(:time) { Time.now }

  it 'creates a transaction' do
    expect(transaction.time).to be_a Time
    expect(transaction.amount).to eq sum
    expect(transaction.balance).to eq balance
    expect(transaction.action).to eq action
    expect(transaction).to be_a Transaction
  end

  describe '.debit?' do
    it 'returns the action if true' do
      expect(transaction.debit?).to be true
    end
    it 'returns an empty string if false' do
      expect(credit_transaction.debit?).to be false
    end
  end

  describe '.credit?' do
    it 'returns the action if true' do
      expect(transaction.credit?).to be false
    end
    it 'returns an empty string if false' do
      expect(credit_transaction.credit?).to eq true
    end
  end
end
