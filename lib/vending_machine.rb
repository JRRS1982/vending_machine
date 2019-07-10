
class VendingMachine
  attr_accessor :change

  def initialize
    @change = { '1p' => 0, '2p' => 0, '5p' => 0, '10p' => 0, '20p' => 0, '50p' => 0, '£1' => 0, '£2' => 0 }
  end
  
  def restock_coins(coin_name: "coin_default", coin_count: 0)
    @change.each do |key, value|
      if coin_name == key
          @change[key] += coin_count
      end
    end
  end

  def print_coins

    print_coins_header
    @change.each do |key, value|
      next if value == 0
      puts "#{key} || #{value}\n"
    end
  end

  private
  
  def print_coins_header
    puts "coin's value || count"
  end
end
