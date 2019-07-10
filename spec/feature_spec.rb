require 'vending_machine'

describe 'FEATURES' do
  subject {VendingMachine.new}
  it 'vending machine prints the coins that held' do
    expect(STDOUT).to receive(:puts).with("coin's value || count")
    expect(STDOUT).to receive(:puts).with("£1 || 5\n")
    subject.restock_coins(coin_name: '£1', coin_count: 5)
    subject.print_coins
  end
end