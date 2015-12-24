class CreateDiscs < ActiveRecord::Migration
  def change
    create_table :discs do |t|
      t.string :name, limit: 100, null: false
      t.integer :year, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.integer :state, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
