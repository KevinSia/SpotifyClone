get '/' do
  if logged_in?
    @playlists = Playlist.where.not(user_id: current_user.id)
    erb :"static/home"
  else
    erb :"static/login"
  end
end
