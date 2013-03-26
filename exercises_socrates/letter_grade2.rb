#Exercise: Calculate the letter grade of a series of grades
#Create a method get_grade that accepts an Array of test scores. 
#Each score in the array should be between 0 and 100, where 100 is the max score.
#Compute the average score and return the letter grade as a String, 
#i.e., 'A', 'B', 'C', 'D', 'E', or 'F'.
#
#
#
def get_grade(grade)
    average = grade.inject{ |sum, x| sum + x } / grade.size
    if average >= 90
      return "A"
    elsif average >=80
      return "B"
    elsif average >=70
      return "C"
    elsif average >=60
      return "D"
    else 
        return "F"
    end
end
#
#
#
#things important to note that I learned here:
#"inject" takes the numbers from the array and combines them all into the operation