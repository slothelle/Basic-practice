#Implement a method called times_table which takes as its input 
#an integer and prints out a times table with that number of rows.
#
#The numbers can be separated by any spaces or tabs, 
#but each row must be on a new line. 
#This means it's ok if the columns don't line up.
#
#Example
1   2    3     4     5
2   4    6     8     10
3   6    9     12    15
4   8    12    16    20
5   10   15    20    25

#need two loops, one nested inside of the other
def times_table(rows)
  1.upto(rows) { |num| print num, " "}
end