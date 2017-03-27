class AddAttachmentImageToLanguages < ActiveRecord::Migration
  def self.up
    change_table :languages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :languages, :image
  end
end
