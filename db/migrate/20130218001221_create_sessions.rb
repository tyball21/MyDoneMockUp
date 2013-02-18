class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :poster_id
      t.integer :runner_id

      t.timestamps
    end
  end
end
