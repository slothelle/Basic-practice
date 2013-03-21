#logical operators
#and is &&
#&& requires both original statements to be true to output true

#or is ||
#|| requires both original statematents to be false to output false
#all other statement combos output true

#not is !
#! reverses the truth value of any conditional statement

#examples

#this should be false
x = 112
y = 2
puts (x == 113 && y != 2)

#this should be true because the not operator reverses the truth value
x = 112
y = 2
puts !(x == 113 && y != 2)

#should be false because of the not operator
height = 120
width = 280
puts !(height < 100 || width > 275)

#true because of the or operator