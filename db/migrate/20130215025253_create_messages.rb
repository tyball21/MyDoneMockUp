class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.boolean :urgent
      t.integer :poster_id
      t.integer :task_id

      t.timestamps
    end
  end
end
