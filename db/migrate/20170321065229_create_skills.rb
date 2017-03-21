class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.column :skills, :string
      t.column :projects, :string
      t.column :language_id, :integer

      t.timestamps
    end
  end
end
