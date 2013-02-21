class DropIdMessages < ActiveRecord::Migration
	def change
		remove_column :messages, :task_id 
		add_column :messages, :runner_id, :integer
		add_index :messages, :runner_id
		add_index :messages, :poster_id
		remove_column :posters, :task_id
		remove_column :posters, :runner_id
		remove_column :posters, :message_id
		remove_column :runners, :message_id
		remove_column :runners, :poster_id
		remove_column :runners, :task_id
		remove_column :tasks, :message_id
		add_column :messages, :task_id, :integer
		add_index :messages, :task_id
	end
end
