class Scene < ActiveRecord::Base
	attr_accessor :title
	attr_accessor :description
	attr_accessor :image

	validates :title, presence: true
	validates :description, presence: true
	validates :image, presence: true
end
