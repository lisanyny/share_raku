class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|

      t.integer :customer_id, null: false
      t.integer :comment_id
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :meet_place, null: false, default: 'ηΎε°ιε'
      t.string :title, null: false
      t.integer :place_id, null: false

      t.timestamps
    end
  end
end
