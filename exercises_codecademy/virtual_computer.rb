# Virtual computer
# Added update method

class Computer

  @@users = {} # creating empty hash

  def initialize(username, password)
    @username = username
    @password = password
    @files = {} 
    @@users[username] = password # adding key/value to hash
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "File #{filename} created at #{time}."
  end
  
  def Computer.get_users
    @@users
  end
  
  def update(filename)
    if @files[filename.to_sym].nil?
      return "That file doesn't exist, please add it first."
    else 
      # Update the file itself, or just the time stamp?
    end 
  end
  
end

my_computer = Computer.new("liz","password1234")

my_computer.create("list.txt")