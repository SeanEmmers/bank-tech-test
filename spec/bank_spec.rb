# frozen_string_literal: true

require 'bank'

describe Bank do
  describe '.deposit' do
    it 'adds the amount deposited to the total bank balance' do
      subject.deposit(50)
      expect(subject.bank_balance).to eq 50
    end
  end

  describe '.withdrawl' do
    it 'withdrawls the correct amount from the bank balance' do
      subject.deposit(50)
      subject.withdrawl(30)
      expect(subject.bank_balance).to eq 20
    end
  end
end
