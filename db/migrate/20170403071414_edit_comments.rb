class EditComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :skill_id, :integer

  end
end
