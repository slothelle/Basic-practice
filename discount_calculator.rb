# Returns how much someone will save, and how much they will pay. 

def how_much_will_i_save(percentage_off, retail_price)
  savings = (retail_price * percentage_off) / 100
  you_pay = retail_price - savings.round(2)
  return "$#{retail_price} at #{percentage_off}% off saves you $#{savings.round(2)}, so you'll pay $#{you_pay.round(2)}."
end

puts how_much_will_i_save(10, 120.05)

# Returns only how much someone will pay.

def how_much_will_this_cost(percentage_off, retail_price)
  you_pay = retail_price - ((retail_price * percentage_off) / 100)
  return "$#{retail_price} at #{percentage_off}% means you'll pay $#{you_pay.round(2)}."
end 

puts how_much_will_this_cost(25, 1582.94)