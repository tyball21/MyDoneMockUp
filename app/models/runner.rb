class Runner < ActiveRecord::Base
  attr_accessible :background, :message_id, :poster_id, :skills, :task_id

  has_many :tasks, :through => :posters

  has_many :messages



end
