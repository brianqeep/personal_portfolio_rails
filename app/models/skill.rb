class Skill < ActiveRecord::Base
    belongs_to :language

    validates :skill, :presence => true
    validates :name, :presence => true
    validates :project, :presence => true
  end
