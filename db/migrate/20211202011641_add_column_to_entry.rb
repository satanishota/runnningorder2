class AddColumnToEntry < ActiveRecord::Migration[5.2]
  def change
      add_column :entries, :rank, :integer
      add_column :entries, :start_time, :datetime
  end
end
