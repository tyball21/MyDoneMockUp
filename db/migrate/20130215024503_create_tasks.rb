class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :caption
      t.integer :task_price
      t.integer :poster_id
      t.integer :runner_id
      t.integer :message_id

      t.timestamps
    end
  end
end
