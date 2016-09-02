class Employee
  attr_accessor :first_name, :last_name, :email, :birthdate, :ssn, :id

  def initialize(input)
    @id = input['id']
    @first_name = input['first_name']
    @last_name = input['last_name']
    @email = input['email']
    @birthdate = input['birthdate']
    @ssn = input['ssn']
  end

  def full_name
    @first_name + " " + @last_name
  end

  def self.all
    employee_array = Unirest.get("http://localhost:3001/api/v2/employees.json").body
    employees = []
    employee_array.each do |employee|
      employees << Employee.new(employee)
      end
      employees
  end

  def self.find_by(options)
      employee_hash = Unirest.get("http://localhost:3001/api/v2/employees/#{options[:id]}.json").body
      Employee.new(employee_hash)
  end

  def destroy
    Unirest.delete('http://localhost:3001/api/v2/employees/' + id.to_s + '.json',
      headers: {'Accept' => 'application/json'}
    ).body
  end
end
