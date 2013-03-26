#example of when the computer converts from fixnum to bignum
#
num = 81
6.times do
  puts "#{num.class}: #{num}"
  num *= num
end