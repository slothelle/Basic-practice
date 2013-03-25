#Exercise: Calculate a letter grade
#Create a method get_grade that accepts an average in the class and returns the letter grade as a String.
#It should only return one of 'A', 'B', 'C', etc. Don't worry about + and - grades.
#
def get_grade(grade)
  if grade >= 90
    return "A"
  elsif grade >=80
    return "B"
  elsif grade >= 70
    return "C"
  elsif grade >= 60
    return "D"
  else
    return "F"
  end
end
