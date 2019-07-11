
class VendingMachine
  attr_accessor :change, :products

  def initialize
    @change = { '1p' => 0, '2p' => 0, '5p' => 0, '10p' => 0, '20p' => 0, '50p' => 0, '£1' => 0, '£2' => 0 }
    @products = []
    @product_count_helper = 0
  end
  
  def restock_coins(coin_name: "coin_default", coin_count: 0)
    @change.each do |key, value|
      if coin_name == key
        @change[key] += coin_count
      end
    end
  end

  def restock_products(product: Product.new(product_name: 'default_name', product_price: 50), product_count: 0)
    product_count.times do
      @products << product
    end
  end

  def print_coins
    print_coins_header
    @change.each do |key, value|
      next if value == 0
      puts "#{key} || #{value}\n"
    end
  end
  
  def unique_products
    @products.uniq
  end

  def print_products
    z = unique_products
    z.each do |x|
      number_of_products = product_count(x)
      puts "#{x.name} || #{number_of_products}"
    end
  end

  # probably want to make this method private, but not yet.
  def product_count(product_to_find)
    product_count_helper = 0
    @products.each do |z|
      if z.name == product_to_find.name
        product_count_helper += 1
      end
    end
    product_count_helper
  end

  private

  def product_header
    puts "product type || count"
  end

  def print_coins_header
    puts "coin's value || count"
  end
end
