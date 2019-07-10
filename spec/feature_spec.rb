require 'vending_machine'

describe 'FEATURES' do
  it 'vending machine prints the coins that held' do
    expect(STDOUT).to receive(:puts).with("coin's value || count")
    expect(STDOUT).to receive(:puts).with("£1 || 5\n")
    my_vender = VendingMachine.new
    my_vender.restock_coins(coin_name: '£1', coin_count: 5)
    my_vender.print_coins
  end
end