class Employee < ApplicationRecord
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
