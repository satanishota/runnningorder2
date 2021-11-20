class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      
      t.string :name, null: false
      t.text :introduction, null: false
      t.string :place, null: false
      t.integer :capacity, null: false
      t.date :day, null: false
      t.float :distance, null: false
      
      t.timestamps
    end
  end
end
