class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.float :start
      t.float :way, null: false
      t.float :goal
      
      t.timestamps
    end
  end
end
