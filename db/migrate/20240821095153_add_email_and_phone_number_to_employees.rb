class AddEmailAndPhoneNumberToEmployees < ActiveRecord::Migration[7.2]
  def change
    add_column :employees, :contact_number, :integer
    add_column :employees, :country, :string
    add_column :employees, :state, :string
    add_column :employees, :city, :string
  end
end
