#logical operators
#always use parenthesis to ensure proper order of operations
#
#and is &&
#&& requires both original statements to be true to output true
#
#or is ||
#|| requires both original statematents to be false to output false
#all other statement combos output true
#
#not is !
#! reverses the truth value of any conditional statement
#
#examples
#
#this should be false
x = 112
y = 2
puts (x == 113 && y != 2)
#
#this should be true because the not operator reverses the truth value
x = 112
y = 2
puts !(x == 113 && y != 2)
#
#should be false because of the not operator
height = 120
width = 280
puts !(height < 100 || width > 275)
#
#true because of the or operator
temperature = 99
pressure = 20
volume = 250
puts (temperature < 100 || pressure < 20 || volume >= 250)
#
#should be false because first condition is false, using &&
cost = 100
price = 120
tax = 0.05
income = 50
puts (cost > price && price < tax && tax > income * 0.5)
#
#short circuiting 
#if there is a series of conditional statematents using && and the first is false,
#it will automatically result in false, so it skips the rest of the code
#with ||, it will skip and automatically result in true if the first is true
#can use short circuiting to avoid bad things like diving by 0:
denominator != 0 && 10/denominator < 100