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
