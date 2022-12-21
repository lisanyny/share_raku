class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|

      t.integer :event_id, null: false
      t.integer :customer_id, null: false
      t.integer :status, null: false

      t.timestamps
    end
  end
end
