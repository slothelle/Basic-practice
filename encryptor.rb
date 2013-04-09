# http://tutorials.jumpstartlab.com/projects/encryptor.html

# Encrypts strings with lowercase and uppercase letters, plus spaces.
# Can't handle punctuation (quotation marks, commas, periods, etc) YET!

class Encryptor
  
  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 
      'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
      'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
      'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
      'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
      'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
      'y' => 'l', 'z' => 'm', ' ' => ' '}
  end
    
  def encrypt_letter(letter)
    lowercase = letter.downcase
    cipher[lowercase]
  end
    
  def encrypt_string(string)
    letters = string.split("")

    results = []
      
    letters.each do |l|
      encrypted_letter = encrypt_letter(l)
      results.push(encrypted_letter)
    end

    results.join        
  end
    
end

e = Encryptor.new

my_string = "Svenborgia totally rocks"

e.encrypt_string(my_string)
# => firaobetvn gbgnyyl ebpxf

