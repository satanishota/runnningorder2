class AddColumnMap < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :event_id, :integer
  end
end
