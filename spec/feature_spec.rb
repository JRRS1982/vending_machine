require 'vending_machine'
require 'product'

describe 'FEATURES' do
  subject {VendingMachine.new}
  it 'prints the coins that held' do
    expect(STDOUT).to receive(:puts).with("coin's value || count")
    expect(STDOUT).to receive(:puts).with("£1 || 5\n")
    subject.restock_coins(coin_name: '£1', coin_count: 5)
    subject.print_coins
  end

  it 'prints the products that are held' do
    expect(STDOUT).to receive(:puts).with("product type || count")
    expect(STDOUT).to receive(:puts).with("Mint Aero || 5\n")
    subject.restock_products(product: Product.new(product_name: 'Mint Aero', product_price: 57), product_count: 5)
    subject.print_products
  end
end