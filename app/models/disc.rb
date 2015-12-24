class Disc < ActiveRecord::Base
	validates :name, :year, :price, :state, presence: true
	validates :description, presence: true, length: { minimum: 10 }

  #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  #validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]  
  #validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  
  has_attached_file :avatar, styles: { large: "400x300", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :avatar, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  #validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  #do_not_validate_attachment_file_type :avatar


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
end



