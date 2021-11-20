class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      
      t.integer :user_id, null: false
      t.integer :event_id, null: false
      t.integer :time, null: false

      t.timestamps
    end
  end
end
