# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Employee.all.each do |employee|
  employee.update(password: "123456")
end

FrontEndSkill.find_or_create_by(name: "HTML")
FrontEndSkill.find_or_create_by(name: "CSS")
FrontEndSkill.find_or_create_by(name: "JavaScript")
FrontEndSkill.find_or_create_by(name: "JQuery")
FrontEndSkill.find_or_create_by(name: "React JS")
FrontEndSkill.find_or_create_by(name: "Angular")
FrontEndSkill.find_or_create_by(name: "Vue JS")

BackEndSkill.find_or_create_by(name: "Ruby")
BackEndSkill.find_or_create_by(name: "Rails")
BackEndSkill.find_or_create_by(name: "Java")
BackEndSkill.find_or_create_by(name: "Node JS")
BackEndSkill.find_or_create_by(name: "Python")
BackEndSkill.find_or_create_by(name: "PHP/Laravel")
BackEndSkill.find_or_create_by(name: "Postgresql")
BackEndSkill.find_or_create_by(name: "MySQL")
BackEndSkill.find_or_create_by(name: "MongoDB")
BackEndSkill.find_or_create_by(name: "CURL")
BackEndSkill.find_or_create_by(name: "REST Api")

EmployeeSkill.create(employee: Employee.first, skill: Skill.find(1), rating: 8)
EmployeeSkill.create(employee: Employee.first, skill: Skill.find(2), rating: 7)
EmployeeSkill.create(employee: Employee.first, skill: Skill.find(3), rating: 8)
EmployeeSkill.create(employee: Employee.first, skill: Skill.find(4), rating: 8)
EmployeeSkill.create(employee: Employee.first, skill: Skill.find(5), rating: 7)
EmployeeSkill.create(employee: Employee.last, skill: Skill.find(6), rating: 8)
EmployeeSkill.create(employee: Employee.last, skill: Skill.find(7), rating: 8)
EmployeeSkill.create(employee: Employee.last, skill: Skill.find(8), rating: 8)

# Employee.create(employee_name: "kahnkahl", email: "khankhal@gmail.com", gender: "Male", hobbies: "reading", contact_number: 789654123, country: "IN", state: "gujarat", city: "Surat")
# Employee.create(employee_name: "dhaval", email: "dhaval@gmail.com", gender: "Male", hobbies: "learning", contact_number: 321654987, country: "IN", state: "gujarat", city: "Surat")
