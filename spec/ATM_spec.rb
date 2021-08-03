# frozen_string_literal: true

require 'ATM'

describe ATM do
  let(:transaction_history) { double('transaction_history') }
  let(:transaction) { double('transaction') }

  let(:atm) { described_class.new }
  describe '.deposit' do
    it 'adds the amount deposited to the total bank balance' do
    end
  end

  describe '.withdrawl' do
    it 'withdrawls the correct amount from the bank balance' do
    end

    it 'does not let you withdraw below zero' do
    end
  end

  describe '.print_statement' do
  end

  describe '.balance' do
  end
end
