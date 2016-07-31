
class Manager < Employee
  include EmailReporter

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def same_method
    super

  #puts "something"
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end

  def send_email
  end
end

manager = Manager.new

manager.same_method
