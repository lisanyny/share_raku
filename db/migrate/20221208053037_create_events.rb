class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      
      t.integer :customer_id, null: false
      t.integer :album_id
      t.integer :commnet_id
      t.integer :status_id, null: false
      t.date :date, null: false
      t.string :time, null: false
      t.string :place, null: false
      t.string :meet_place, null: false, default: '現地集合'
      

      t.timestamps
    end
  end
end
