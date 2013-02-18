class Runner < ActiveRecord::Base
  attr_accessible :background, :message_id, :poster_id, :skills, :task_id
end
