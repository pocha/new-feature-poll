class Field < ActiveRecord::Base
  attr_accessible :content, :poll_id
  belongs_to :poll
end
