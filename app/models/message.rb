class Message < ActiveRecord::Base
  attr_accessible :body, :poster_id, :task_id, :title, :urgent
end
