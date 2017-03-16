class User < ActiveRecord::Base
  has_many :playlists
  has_many :songs

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }

  has_secure_password
end
