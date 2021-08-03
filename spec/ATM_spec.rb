# frozen_string_literal: true

require 'ATM'

describe ATM do

  context 'Money has already been deposited' do

    before(:each) { subject.deposit(50) }

    describe '.deposit' do
      it 'adds the amount deposited to the total bank balance' do
        expect(subject.bank_balance).to eq 50
      end

      it 'saves the date that the money was deposited' do
        time = Time.now.strftime("%d/%m/%Y")
        expect(subject.statement).to eq [ {time => {deposit: 50} } ]
      end
    end

    describe '.withdrawl' do
      it 'withdrawls the correct amount from the bank balance' do
        subject.withdrawl(30)
        expect(subject.bank_balance).to eq 20
      end

      it 'does not let you withdraw below zero' do
        expect {subject.withdrawl(60)}.to raise_error "You cannot withdraw more than your total balance" 
        expect(subject.bank_balance).to eq 50
      end

      it 'saves the date that the money was withdrawn' do
        subject.withdrawl(10)
        time = Time.now.strftime("%d/%m/%Y")
        expect(subject.statement).to eq [ {time => {deposit: 50} }, {time => {withdrawl: 10} } ]
      end
    end

    describe '.print_statement' do
      it 'returns a history of transactions in a readable manor' do
        subject.withdrawl(30)
        time = Time.now.strftime("%d/%m/%Y")
        expect(subject.statement).to eq [ {time => {deposit: 50} }, {time => {withdrawl: 30} } ]
      end
    end

    describe '.balance' do
    end
    
  end
end
