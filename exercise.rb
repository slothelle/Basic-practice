#defining variables
#Create variables called first_name, last_name, and age.
#Assign the variables your personal information.
first_name = "Liz"
last_name = "Abinante"
age = 27

#simple string methods 1
#Create a String variable called old_string and assign it 
#the value "Ruby is cool".
#Use String methods to modify the old_string variable so 
#that it is now "LOOC SI YBUR" and assign this to another 
#variable called new_string.
old_string = "Ruby is cool"
new_string = old_string.reverse
new_string.upcase!

#local variables and basic arithmetic 
num1 = 12
num2 = 3
sum = num1 + num2
difference = num1 - num2
quotient = num1.to_f / num2.to_f
product = num1 * num2
modulus = num1 % num2