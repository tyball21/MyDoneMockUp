class Task < ActiveRecord::Base
  attr_accessible :caption, :message_id, :poster_id, :runner_id, :task_price, :title


  belongs_to :poster

  belongs_to :runner

end
