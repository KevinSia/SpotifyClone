class CreatePlaylists < ActiveRecord::Migration
	def change
		create_table :playlists do |p|
			p.string :name
			p.references :user, index: true, foreign_key: true
		end
	end
end
