# frozen_string_literal: true

require 'balance'

describe Balance do
  let(:sum) { 50 }
  before(:each) do
    subject.increase_balance(sum)
  end

  describe '.display_balance' do
    it 'displays the balace' do
      expect(subject.display_balance).to eq sum
    end
  end

  describe '.increase_balance' do
    it 'increases the balance' do
      subject.increase_balance(sum)
      expect(subject.display_balance).to eq 100
    end
  end

  describe '.reduce_balance' do
    it 'decreases the balance' do
      subject.reduce_balance(sum)
      expect(subject.display_balance).to eq 0
    end
  end
end
