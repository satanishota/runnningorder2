class ChangeDatatypestartOfMaps < ActiveRecord::Migration[5.2]
  def change
    change_column :maps, :start, :float, null:false, default:35.27679167064741
    change_column :maps, :way, :float, null:false, default:35.25950095843937
    change_column :maps, :goal, :float, null:false, default:35.24571985815995
    change_column :maps, :start_k, :float, null:false, default:136.25176259487478
    change_column :maps, :goal_k, :float, null:false, default:136.22741371387067
    change_column :maps, :way_k,:float, null:false, default:136.21849524281228
  end
end
