class Poster < ActiveRecord::Base
  attr_accessible :about, :address, :city, :message_id, :name, :phone, :runner_id, :state, :task_id, :zip

  validates_presence_of :poster_id

  has_many :tasks

  has_many :messages
  

end
