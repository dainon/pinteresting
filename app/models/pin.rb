class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #has_attached_file :image, :styles => { :medium => "x300", :thumb => "x100" }
  #has_attached_file :image

  #validates :image, presence: true
  #validates :description, presence: true
end
