class AddNameAndTypeToSkill < ActiveRecord::Migration[7.2]
  def change
    add_column :skills, :name, :string
    add_column :skills, :type, :string
  end
end
