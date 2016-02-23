class Post < ActiveRecord::Base

	has_many :comments
	belongs_to :category
	validates_presence_of :title
	validates_presence_of :description

end