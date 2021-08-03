# frozen_string_literal: true

require 'ATM'

describe ATM do
  let(:transaction_history) { double('transaction_history') }
  let(:transaction) { double('transaction') }

  let(:atm) { described_class.new }

  before(:each) {
    atm.deposit(500)
  }
  describe '.deposit' do
    it 'adds the amount deposited to the total bank balance' do
      expect(atm.show_balance).to eq 500
    end
  end

  describe '.withdraw' do
    it 'withdraws the correct amount from the bank balance' do
      atm.withdraw(200)
      expect(atm.show_balance).to eq 300
    end

    it 'does not let you withdraw below zero' do
    end
  end

  describe '.print_statement' do
  end

  describe '.balance' do
  end
end
