require 'rails_helper'

describe Language do
    it { should validate_presence_of :name }
    it { should have_many :skills }
    it { should have_many :comments }
  end
