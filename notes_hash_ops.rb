#hash operations
#every hash supports the same set of methods, regardless of keys and values
#these methods send questions or commands to the hash
#
#
#common hash methods
#
#
#hash#keys returns the list of the keys in the hash as an array
#give me a list of your keys!
person = {:first_name => 'Nancy', :last_name => 'Drew', :age => 28}
puts person.keys
#
#
#hash#values - returns a list of the values in the hash as an array
#give me a list of your values!
person = {:first_name => 'Jessica', :last_name => "Smith", :age => 32}
puts person.values
#
hash = {"animals" => ['cats', 'dogs', 'ponies'],
        "plans"   => ['tulips', 'peonies', 'ivy']}
puts hash.values
#
#
#hash#has_key? - takes any Ruby object as input and returns true if that object is a key
#returns false if not a key
#is this one of your keys?
person = {:first_name => 'Elizabeth', :last_name => 'Abinante', :age => 27}
puts person.has_key?(:first_name)
puts person.has_key?(:last_name)
puts person.has_key?(:monkey)
puts person.has_key?('first_name')
puts person.has_key?(27)
puts person.has_key?([1,2,3])
#
#has_key? is the same as doing this when using keys:
person.keys.include?(:first_name)
#
#
#hash#has_value? - takes any Ruby object as input and returns true if that object is a value
#returns false if not a value
#is this one of your values? is this value in one of the boxes in the storage unit?
person = {:first_name => 'Blue Ivy', :last_name => 'Carter', :age => 4}
puts person.has_value?(:first_name)
puts person.has_value?(:last_name)
puts person.has_value?('Blue Ivy')
puts person.has_value?(4)
puts person.has_value?('Carter')
puts person.has_value?(:Blue_Ivy)
puts person.has_value?([1,2,3])
#
#
#hash#merge - takes another hash as input and returns a new hash after merging
#if two hashes share a key, value from the (passed-in hash) wins and gets the key
hash1 = {:first_name => 'Nancy'}
hash2 = {:last_name => 'Drew'}
hash3 = hash1.merge(hash2)
puts hash3
#
hash1 = {:email => 'liz@feministy.com', :age => 100}
hash2 = {:age => 25}.merge(hash1)
puts hash2
#
hash1 = {:first_name => 'Nancy'}
hash2 = {'first_name' => 'Frank'}
hash3 = hash1.merge(hash2)
#
#hash#merge is like telling the hash to add keys and values to itself, but if it already has one of the keys, to use the new value
#
#
#see remaining methods
#http://www.ruby-doc.org/core-1.9.3/Hash.html