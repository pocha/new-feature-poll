class Poll < ActiveRecord::Base
  attr_accessible :question
  has_many :fields
  has_many :results
end
