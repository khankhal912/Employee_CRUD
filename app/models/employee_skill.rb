class EmployeeSkill < ApplicationRecord
  validates :rating, presence: true

  belongs_to :employee
  belongs_to :skill
end
