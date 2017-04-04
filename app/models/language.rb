class Language < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :skills
  has_many :comments
  belongs_to :user
  validates :name, :presence => true
  end
