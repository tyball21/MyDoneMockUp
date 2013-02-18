class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :city
      t.integer :zip
      t.text :about
      t.integer :phone
      t.integer :task_id
      t.integer :runner_id
      t.integer :message_id

      t.timestamps
    end
  end
end
