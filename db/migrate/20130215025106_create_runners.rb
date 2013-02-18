class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.integer :poster_id
      t.integer :message_id
      t.integer :task_id
      t.text :skills
      t.boolean :background

      t.timestamps
    end
  end
end
