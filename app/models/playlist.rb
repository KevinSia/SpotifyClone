class Playlist < ActiveRecord::Base
	has_many :songs
	belongs_to :user

	validates :name, length: { minimum: 6 }
end
