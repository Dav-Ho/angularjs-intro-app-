class Employee < ActiveRecord::Base
  has_many :addresses
end

  def full_name
    first_name + ' ' + last_name
  end 
