#Exercise: Defining basic arithmetical methods
#Define four methods which correspond to the four basic arithmetic operations:
#add, subtract, multiply, divide
#They should accept either integers or floating point numbers as input. divide should perform floating point division.
#
def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def multiply(num1, num2)
  return num1 * num2
end

def divide(num1, num2)
  return num1.to_f / num2.to_f
end