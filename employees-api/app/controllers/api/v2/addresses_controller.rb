class AddressesController < ApplicationController
  def show
    @employee = Employee.find_by(params[:id])
    @employee.addresses 
  end
end
