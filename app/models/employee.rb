class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :employee_skills, dependent: :destroy
  has_many :skills, through: :employee_skills
  # has_many :dependent_records, dependent: :nullify

  validates :email, presence: true, uniqueness: true
  validate :validate_country

  before_save :set_state_if_nil

  def validate_country
    return if country.nil?
    unless Employee.country_code_list.include?(country)
      errors.add(:country, "is not valid")
    end
  end

  def self.country_code_list
    IsoCountryCodes.all.map(&:alpha2)
  end

  private

  def set_state_if_nil
    self.state ||= country
  end
end
