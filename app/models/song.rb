class Song < ActiveRecord::Base
  validates :title, length: { minimum: 3 }
  belongs_to :playlist, required: true
  belongs_to :user, required: true
	# This is Sinatra! Remember to create a migration!

  def details
    "(#{duration}) #{title.capitalize} - #{artist.capitalize} [#{album.capitalize}]"
  end
end
