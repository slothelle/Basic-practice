class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(house_hash)
    @address = house_hash[:address]
    @square_feet = house_hash[:square_feet]
    @num_bedrooms = house_hash.fetch(:num_bedrooms) { 3 }
    @num_baths = house_hash.fetch(:num_baths) { 2 }
    @cost = house_hash.fetch(:cost) { 320_000 }
    @down_payment = house_hash.fetch(:down_payment) { 0.20 }
    @sold = house_hash.fetch(:sold) { false }
    @short_sale = house_hash[:short_sale]
    @has_tenants = house_hash.fetch(:has_tenants) { false }
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end

housey = {address: "301 My Cute Lane", square_feet: 1400, short_sale: false, num_bedrooms: 4}

house = House.new(housey)

puts house
