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

    it 'does not let you withdraw below zero' do
      subject.deposit(10)
      expect {subject.withdrawl(20)}.to raise_error "You cannot withdraw more than your total balance" 
    end
  end

  describe '.statement' do
    it 'returns a history of transactions in a readable manor' do
      subject.deposit(50)
      subject.withdrawl(30)
      expect(subject.statement).to eq [ {deposit: 50}, {withdrawl: 30} ]
    end
  end
end
