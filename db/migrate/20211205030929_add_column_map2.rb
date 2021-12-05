class AddColumnMap2 < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :start_k, :float
    add_column :maps, :goal_k, :float
    add_column :maps, :way_k, :float
    change_column :maps, :event_id, :intege ,null: false
  end
end
