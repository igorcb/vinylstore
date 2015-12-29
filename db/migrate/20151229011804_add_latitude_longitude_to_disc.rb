class AddLatitudeLongitudeToDisc < ActiveRecord::Migration
  def change
    add_column :discs, :latitude, :float
    add_column :discs, :longitude, :float
  end
end
