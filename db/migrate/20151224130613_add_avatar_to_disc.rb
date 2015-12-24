class AddAvatarToDisc < ActiveRecord::Migration
	def up
    add_attachment :discs, :avatar
  end

  def down
    remove_attachment :discs, :avatar
  end
end
