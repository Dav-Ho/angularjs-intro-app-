class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def same_method
    puts "something"
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def send_report
    puts 'Sending email...'
    # use email sending library...
    send_email
    puts 'Email sent!'
  end

  def send_email
    # This email is sent
  end
end
