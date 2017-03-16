class Song < ActiveRecord::Base
  validates :title, length: { minimum: 3 }
  belongs_to :playlist, required: true
	# This is Sinatra! Remember to create a migration!
end
