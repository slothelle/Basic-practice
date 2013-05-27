# After I did all of this work, Tanner showed us zip:
# keys = table.first
# first_hash = table[1]
# puts Hash[keys.zip(first_hash)]

# Skipping the steps of (1) making subarrays that are key/value pairs and (2) converting array of subarrays to hash. 
# Instead sending the information straight into a hash.

table = [ 
          ["Number", "Name", "Position", "Points per Game"],
          ["12", "Joe Schmo", "Center",[14, 32, 7, 0, 23]],
          ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0]],
          ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25]], 
          ["18", "Sally Talls", "Power Forward", [18, 29, 26, 31, 19]], 
          ["22", "MK DiBoux ", "Small Forward", [11, 0, 23, 17, 0]]
        ]

hashed_data_table = []
last_index = table[0].length
next_array = 1

until next_array == table.length
  next_index = 0
  new_hash = {}
  until next_index == last_index
    key = table[0][next_index]
    value = table[next_array][next_index]
    new_hash[key] = value
    next_index += 1
  end
  next_array += 1
  hashed_data_table.push(new_hash)
end 

# Driver code
puts hashed_data_table[2] == {"Number"=>"31", "Name"=>"Harvey Kay", "Position"=>"Shooting Guard", "Points per Game"=>[0, 30, 16, 0, 25]}
puts hashed_data_table[5] == nil
puts hashed_data_table[0] == {"Number"=>"12", "Name"=>"Joe Schmo", "Position"=>"Center", "Points per Game"=>[14, 32, 7, 0, 23]}