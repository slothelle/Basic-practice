def introduction(age, gender, *name)
  long_name = name.join(' ')
  "Meet #{long_name}, who's #{age} and #{gender}"
end 