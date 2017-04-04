class CreateTableComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :comment, :string
      t.column :name, :string

      t.timestamps
    end
  end
end
