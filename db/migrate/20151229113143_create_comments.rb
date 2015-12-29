class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email_source
      t.string :email_target
      t.references :disc, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
