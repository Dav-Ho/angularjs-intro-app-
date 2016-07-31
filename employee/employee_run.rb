require_relative 'email_reporter'
require_relative 'employ'
require_relative 'manager'
require './Intern'

employee1 = Employee.new(first_name: 'Majora', last_name: 'Carter', salary: 80_000, active: true)
employee2 = Employee.new(first_name: 'Danilo', last_name: 'Campos', salary: 70_000, active: true)
employee1.print_info
employee2.print_info

manager = Manager.new(first_name: 'Saron', last_name: 'Yitbarek', salary: 100_000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report

puts 'fire employees'
p manager.fire_all_employees
puts employee1.salary
employee1.active = false

intern1 = Intern.new
intern1.send_report
