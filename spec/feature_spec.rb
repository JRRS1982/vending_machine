require 'vending_machine'

describe 'FEATURES' do
  it 'vending machine prints the coins that held' do
    my_vender = VendingMachine.new
    my_vender.restock_coins(coin_name: '£1', coin_count: 5)
    expect(my_vender.print_coins).to eq("£1 || 5")
  end
end