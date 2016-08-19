class Api::V2::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
    )
    render 'show'
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
    )
    render 'show'
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    @employees =Employee.all
    render 'show'
  end
end
