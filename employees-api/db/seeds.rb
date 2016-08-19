100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  Employee.create(
    first_name: first_name,
    last_name: last_name,
    email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
    ssn: Faker::Medical::SSN.ssn,
    birthdate: Faker::Date.between(18.years.ago, 65.years.ago)
  )
end

200.times do
  Address.create(
    :address_1 => Faker::Address.street_address,
    :address_2 => Faker::Address.secondary_address,
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :zip => Faker::Address.zip_code,
    :employee_id => rand(1..100)
  )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
