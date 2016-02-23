class Post < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	belongs_to :category
	validates_presence_of :title
	validates_presence_of :description

end