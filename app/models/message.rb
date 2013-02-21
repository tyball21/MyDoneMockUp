class Message < ActiveRecord::Base
  attr_accessible :body, :poster_id, :task_id, :title, :urgent

  belongs_to :runner

  belongs_to :poster

end
