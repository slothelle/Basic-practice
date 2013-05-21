class AuthenticationSystem
  def initialize(hospital)
    @hospital = hospital
    @authenticated_user = nil
    access
  end

  def access
    welcome
    if @authenticated_user.access_level == :admin
      access_admin
    elsif @authenticated_user.access_level == :doctor
      access_doctor
    elsif @authenticated_user.access_level == :view
      access_view
    elsif @authenticated_user.access_level == :none
      boot
    end
    action = gets.chomp
  end

  private
  def welcome
    puts "Welcome to #{@hospital.hospital_name}."
    puts "--------------------------------------"
    print "Please enter your username: "
    username = gets.chomp
    print "Please enter your password: "
    password = gets.chomp
    puts "--------------------------------------"
    authenticate(username)
  end

  def authenticate(username)
    @authenticated_user = @hospital.employees.select { |p| p.username == username }.first
  end

  def access_admin
    puts "ADMINISTRATIVE PRIVILEGES:"
    puts "\t* @hospital.add_employee"
    puts "\t* @hospital.list_employees"
    puts ""
    access_doctor
  end

  def access_doctor
    puts "DOCTOR PRIVILEGES:"
    puts "\t* @hospital.add_patient"
    puts "\t* @hospital.list_patients"
  end

  def access_view
    puts "VIEW ONLY ACCESS."
    puts "Patient list:"
    @hospital.list_patients
  end  
end 