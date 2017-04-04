class Comment < ActiveRecord::Base
    belongs_to :language

    validates :comment, :presence => true
    validates :name, :presence => true
  end
