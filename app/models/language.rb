class Language < ActiveRecord::Base
  has_many :skills
  belongs_to :user
  validates :name, :presence => true
  end
