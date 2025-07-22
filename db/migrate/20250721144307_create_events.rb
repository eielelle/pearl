class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title, limit: 100, null: false
      t.string :description, limit: 200
      t.string :location, limit: 200, null: false
      t.integer :limit, null: false, default: 50
      t.datetime :expiry, null: false
      t.decimal :price, precision: 10, scale: 2, null: false, default: 0
      t.boolean :isPublished, null: false, default: false
      t.boolean :isPublic, null: false, default: false
      t.integer :attendees, null: false, default: 0
      t.integer :attending, null: false, default: 0
      t.integer :not_attending, null: false, default: 0

      t.timestamps
    end
  end
end
