class Disc < ActiveRecord::Base
	validates :name, :year, :price, :state, presence: true
	validates :description, presence: true, length: { minimum: 10 }
  has_attached_file :avatar, styles: { large: "400x300", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :avatar, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  #has_many :comments, class_name: "Comment", foreign_key: "comment_id", :as => :comment, dependent: :destroy
  has_many :comments
  
  geocoded_by :address 
  after_validation :geocode, :if => :address_changed?

	def state_name
    case self.state
      when 0  then "Selado"
      when 1  then "Quase Perfeito"
      when 2  then "Excelente"
      when 3  then "Muito Bom"
      when 4  then "Bom"
      when 5  then "Regular"
      when 6  then "Ruim"
    else "Nao Definido"
    end
	end

  def feed
    Comment.where("disc_id = ?", self.id)
  end

end



