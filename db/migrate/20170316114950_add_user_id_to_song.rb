class AddUserIdToSong < ActiveRecord::Migration
	def change
		change_table :songs do |t|
			t.references :user, index: true, foreign_key: true
		end
	end
end
