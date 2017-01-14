class Employee < ActiveRecord::Base
  has_many :addresses
  validates :first_name, :last_name, presence: true

  def full_name
    first_name + ' ' + last_name
  end

  def self.all
    api_employees = Unirest.get('http://localhost:3000/api/v2/employees.json',
      headers: { "Accept" => "application/json",
                "Authorization" => "Token token=thetoken",
                "X-User-Email" => "dav@example.com"
              }
    ).body
    employees = []
    api_employees.each do |api_employee|
      employees << Employee.new(api_employee)
    end
    employees
  end
end
