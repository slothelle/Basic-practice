class Patient
  attr_reader :name, :id, :ailment

  def initialize(name, id, ailment)
    @name = name
    @id = id
    @ailment = ailment
  end
end 