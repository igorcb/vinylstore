class AddAddressToDisc < ActiveRecord::Migration
  def change
    add_column :discs, :address, :string
  end
end
