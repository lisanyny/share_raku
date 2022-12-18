class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|

      t.integer :customer_id, null: false
      t.integer :album_id
      t.integer :commnet_id
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :place, null: false
      t.string :meet_place, null: false, default: '現地集合'
      t.string :title, null: false

      t.timestamps
    end
  end
end
