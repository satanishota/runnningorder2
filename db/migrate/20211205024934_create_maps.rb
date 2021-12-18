class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.float :start, null: false, default:35.27679167064741
      t.float :start_k, null: false, default:136.25176259487478
      t.float :way, null: false, default:35.25950095843937
      t.float :way_k, null: false, default:136.21849524281228
      t.float :goal, null: false, default:35.24571985815995
      t.float :goal_k, null: false, default:136.22741371387067
      t.integer :event_id, null: false
      
      
      t.timestamps
    end
  end
end
