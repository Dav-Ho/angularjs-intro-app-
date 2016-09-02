class EmployeesController < ApplicationController
  def index
    #api_employees = Unirest.get("http://localhost:3001/api/v2/employees.json").body
    #@employees = []
    #api_employees.each do |api_employee|
      #@employees << Employee.new(api_employee)
    @employees = Employee.all
  end

  def new
  end

  def show
  #  employee_hash = Unirest.get('http://localhost:3001/api/v2/employees/' + params[:id] + '.json').body
    #@employee = Employee.new(employee_hash)
    @employee = Employee.find_by(id: params[:id])
  end

  def create
    @employee = Unirest.post('http://localhost:3001/api/v2/employees.json',
      headers: {'Accept' => 'application/json'},
      parameters: {first_name: params[:first_name],
                   last_name: params[:last_name],
                   email: params[:email]}
      ).body
    redirect_to "/employees/#{@employee['id']}"
  end

  def edit
    @employee = Unirest.get('http://localhost:3001/api/v2/employees/' + params[:id] + '.json').body
  end

  def update
    @employee = Unirest.patch('http://localhost:3001/api/v2/employees/' + params[:id] + '.json',
      headers: {'Accept' => 'application/json'},
      parameters: {first_name: params[:first_name],
                 last_name: params[:last_name],
                 email: params[:email]
               }
    ).body
    redirect_to "/employees/#{@employee['id']}"
  end
end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    render 'show'
  end
