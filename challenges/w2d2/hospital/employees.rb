class Employee
  attr_accessor :name
  attr_reader :username
  attr_writer :password

  def initialize(name, username, password)
    @name = name
    @username = username
    @password = password
  end

  protected
  def access_level
    raise(NotImplementedError, "Access level required for #{self.class}.") 
  end 
end

class Administrator < Employee
  def access_level
    :admin 
  end 
end 

class Janitor < Employee
  def access_level
    :none
  end 
end 

class Doctor < Employee
  def access_level
    :doctor
  end 
end

class Receptionist < Employee
  def access_level
    :view
  end 
end 