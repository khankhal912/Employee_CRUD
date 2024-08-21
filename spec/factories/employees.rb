FactoryBot.define do
  factory :employee do
    employee_name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }
    gender { "Male" }
    hobbies { "reading" }
    contact_number { Faker::Number.number(digits: 10) }
    country { Employee.country_code_list.sample }
    state { "Gujarat" }
    city { "Surat" }
  end
end
