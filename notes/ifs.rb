#if statements
#dbc socrates
#
#if - when it is true
#unless - when it is false
#
#all if statements can be written as an unless statement, and vice versa
#
#elsif/else - branch to more than one option
#elsif is written after the initial if, and are tested in order
#if one of them tests true, the rest of the ifs are skipped
#an if structure can have as many elsif branches as you want
#else is always the last statement because no conditions need to be met, it's the default
#
#order matters! 
#this code works:
if average >= 90
  grade = "A"
elsif average >= 80
  grade = "B"
else
  grade = "F"
end
#
#but this doesn't because it never gets to 90:
if average >= 80
  grade = "B"
elsif average >= 90
  grade = "A"
else 
  grade = "F"
end
#
  