class Patient
  attr_reader :name, :id, :ailment

  def initialize(name, id, ailment)
    @name = name
    @id = id
    @ailment = ailment
  end

  def access_level
    :patient
  end 
end 