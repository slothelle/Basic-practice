restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu.each do |item, price|
  price = price.to_f + (price * 0.10)
  restaurant_menu[item] = price
end 



