
class Employee
  attr_reader :first_name, :last_name, :salary, :active
  
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @status = input_options[:status]
  end

  def status
    return @status
  end

  def change_status
    @status = !@status
  end

  def print_info
  puts "#{:@first_name} #{:@last_name} make #{:salary} a year."
  end

  def give_annual_raise
  @salary = 1.05 * salary
  end
end

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    @employees = input_options[:employees]
    super(input_options)
  end

  def send_report
  puts "preparing to send report..."
  #use a library to send an email
  puts "the report was sent"
  end
end

employee1 = Employee.new(first_name: "Moe", last_name: "Hart", salary: "60000", status: true)
manager = Manager.new(first_name: "Joe", last_name: "Do", salary: "40000", status: true, employees: [employee1])
puts manager.salary
puts manager.last_name
puts "---------------"
puts "manager[first_name]

mesut = Employee.new(first_name: "David", last_name: "Ho", salary: "30000", status: true)
puts mesut.salary
puts mesut.last_name
puts mesut.first_name
