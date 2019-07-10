require './lib/vending_machine'
require 'pry'

describe 'VendingMachine' do
  subject {VendingMachine.new}
  context '.restock_coins' do
    it 'allows restock coins method' do
      expect(subject).to respond_to(:restock_coins)
    end
    
    it 'can restock 1p coins' do
      subject.restock_coins(coin_name: '1p', coin_count: 5)
      expect(subject.change['1p']).to eq(5)
    end
  end

  context '.print_coins' do
    it 'allows the print coins method' do
      expect(subject).to respond_to(:print_coins)
    end

    it 'prints out what coins are in the machine' do
      subject.restock_coins(coin_name: '£1', coin_count: 5)
      expect(subject.change['£1']).to eq(5)
    end

    it 'the coin statement has a heading' do
      expect(STDOUT).to receive(:puts).with("coin's value || count")
      expect(STDOUT).to receive(:puts).with("£1 || 5\n")
      subject.restock_coins(coin_name: '£1', coin_count: 5)
      subject.print_coins
    end
  end

  context '.restock_products' do
    
  end
end
