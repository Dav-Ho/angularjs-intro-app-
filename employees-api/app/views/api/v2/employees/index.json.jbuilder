json.array! @employees.each do |employee|
  json.id employee.id
  json.first_name employee.first_name
  json.last_name employee.last_name
  json.email employee.email
  json.birthday employee.birthdate
end
