require_relative 'employees'
require_relative 'authenticate'
require_relative 'patients'

class Hospital
  attr_reader :hospital_name, :city, :number_patients, :employees
  attr_accessor :number_employees

  def initialize(hospital_name, city)
    @hospital_name = hospital_name
    @city = city
    @patients = []
    @employees = []
  end

  def add_patient(patient)
    @patients << patient
  end 

  def add_employee(employee)
    @employees << employee
  end 

  def list_patients
    list = @patients.map { |p| "#{p.name}.#{p.id}" }
    puts "Patient\t\t| ID"
    list.each do |p|
      print p.gsub(/\./, "\t| ")
      puts ""
    end 
  end 

  def list_employees
    @employees.map { |p| puts "#{p.name}, #{p.class}" }
  end  
end 

mercy = Hospital.new("Celebrity Rehab", "Chicago")
doctor = Doctor.new("Dr. Susan Barnes", "susan", "12345")
reception = Receptionist.new("Hal Stern", "hal", "12345")
patient1 = Patient.new("Britney Spears", "313021", "Exhaustion")
patient2 = Patient.new("Halle Berry", "091209", "Too pretty")
patient3 = Patient.new("Kobe Bryant", "894502", "Height reduction")
mercy.add_employee(doctor)
mercy.add_employee(reception)
mercy.add_patient(patient1)
mercy.add_patient(patient2)
mercy.add_patient(patient3)
terminal = AuthenticationSystem.new(mercy)