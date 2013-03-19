class Result < ActiveRecord::Base
  attr_accessible :feedback, :field_id, :poll_id, :user_data
  belongs_to :poll
end
