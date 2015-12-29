class Comment < ActiveRecord::Base
  belongs_to :disc

	validates :email_source, :disc_id, presence: true
	validates :description, presence: true, length: { minimum: 10 }  
end
