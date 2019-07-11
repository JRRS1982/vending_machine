require 'vending_machine'
require 'product'

describe 'FEATURES' do
  subject {VendingMachine.new}
  it 'prints the coins that held with a header' do
    expect(STDOUT).to receive(:puts).with("coin's value || count")
    expect(STDOUT).to receive(:puts).with("£1 || 5\n")
    subject.restock_coins(coin_name: '£1', coin_count: 5)
    subject.print_coins
  end

  it 'prints the products that are held with a header' do
    mint_aero_double = instance_double("Product", :name => 'Mint Aero', :price => 57)
    expect(STDOUT).to receive(:puts).with("product type || count")
    expect(STDOUT).to receive(:puts).with("Mint Aero || 5")
    subject.restock_products(product: mint_aero_double, product_count: 5)
    subject.print_products
  end
end