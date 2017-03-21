class EditSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :skills
    remove_column :skills, :projects
  end
end
