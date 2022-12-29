class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.integer :customer_id, null: false
      t.integer :event_id, null: false
      t.string :comment


      t.timestamps
    end
  end
end
