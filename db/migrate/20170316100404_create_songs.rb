class CreateSongs < ActiveRecord::Migration
	def change
		create_table :songs do |s|
			s.string :title
			s.string :artist
			s.string :album
			s.string :duration
			s.references :playlist, index: true, foreign_key: true

			s.timestamps
		end
	end
end
