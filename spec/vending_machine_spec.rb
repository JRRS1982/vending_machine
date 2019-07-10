require 'vending_machine'
require 'pry'

describe 'VendingMachine' do
  context '.restock_coins' do
    it 'allows restock coins method' do
      my_vender = VendingMachine.new
      expect(my_vender).to respond_to(:restock_coins)
    end
    
    it 'can restock 1p coins' do
      my_vender = VendingMachine.new
      my_vender.restock_coins(coin_name: '1p', coin_count: 5)
      expect(my_vender.change['1p']).to eq(5)
    end
  end

  context '.print_coins' do
    it 'allows the print coins method' do
      my_vender = VendingMachine.new
      expect(my_vender).to respond_to(:print_coins)
    end

    it 'prints out what coins are in the machine' do
      my_vender = VendingMachine.new
      my_vender.restock_coins(coin_name: '£1', coin_count: 5)
      expect(my_vender.change['£1']).to eq(5)
    end

    it 'the coin statement has a heading' do
      expect(STDOUT).to receive(:puts).with("coin's value || count")
      expect(STDOUT).to receive(:puts).with("£1 || 5\n")
      my_vender = VendingMachine.new
      my_vender.restock_coins(coin_name: '£1', coin_count: 5)
      my_vender.print_coins
    end
  end
end
