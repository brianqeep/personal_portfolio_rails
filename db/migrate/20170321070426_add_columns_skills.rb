class AddColumnsSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :skill, :string
    add_column :skills, :project, :string

  end
end
