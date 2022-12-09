class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.integer :photo_id
      t.integer :event_id, null: false

      t.timestamps
    end
  end
end
