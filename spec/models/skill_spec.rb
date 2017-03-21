require 'rails_helper'

  describe Skill do
    it { should validate_presence_of :skill }
    it { should validate_presence_of :project }
    it { should belong_to :language }
  end
