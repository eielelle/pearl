class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title, limit: 100
      t.string :description, limit: 200
      t.string :location, limit: 200
      t.integer :limit
      t.datetime :expiry
      t.decimal :price, precision: 10, scale: 2
      t.boolean :isPublished
      t.boolean :isPublic
      t.integer :attendees
      t.integer :attending
      t.integer :not_attending

      t.timestamps
    end
  end
end
