# http://tutorials.jumpstartlab.com/projects/encryptor.html

class Encryptor

  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 
      'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
      'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
      'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
      'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
      'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
      'y' => 'l', 'z' => 'm'}
    end
    
    def encrypt_letter(letter)
      lowercase = letter.downcase
      cipher[lowercase]
    end
end

e = Encryptor.new

e.encrypt_letter('n') # => "a"
e.encrypt_letter('N') # => "a"

#
#
#

# Not done yet - making this work with strings
  

class Encryptor
  
  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r',
      'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w',
      'k' => 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a', 'o' => 'b',
      'p' => 'c', 'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
      'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k', 'y' => 'l',
      'z' => 'm'}
    end
    
    def encrypt_letter(letter)
      lowercase = letter.downcase
      cipher[lowercase]
    end
    
    def encrypt(string)
      letters = string.downcase.split("")
      
      letters.collect { |x| x = encrypt_leter(letters) }
    end
    
end

e = Encryptor.new

my_string = "a rat in the house might eat the ice cream"

encrypt(my_string)
