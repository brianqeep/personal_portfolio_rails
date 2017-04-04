class EditCommentsReplaceSkill < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :skill_id
    add_column :comments, :language_id, :integer


  end
end
