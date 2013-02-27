class Session < ActiveRecord::Base
  attr_accessible :poster_id, :runner_id

  validates_presence_of :poster_id
end
