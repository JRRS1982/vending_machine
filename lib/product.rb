class Product
  attr_reader :name, :product_price

  def initialize(product_name: default_name, product_price: 0)
    @name = product_name
    @product_price = product_price
  end
end
