get '/songs/new' do
  @playlists = current_user.playlists
  erb :"songs/new"
end

post '/songs' do
  song = current_user.songs.new(params[:song])
  if song.save
    flash[:success] = "YEAH NEW SONG!"
    redirect '/'
  else
    @error = "NO CORRECT"
    erb :"songs/new"
  end
end

get '/songs/:id/edit' do
  @song = Song.find(params[:id])
  @playlists = current_user.playlists
  erb :"songs/edit"
end

patch '/songs/:id' do
  song = Song.find(params[:id])
  if song.update(params[:song])
    flash[:success] = 'CHANGED DAT SHIT!'
    redirect "/playlists/#{song.playlist_id}"
  else
    @error = "ERROR MAN NO GOOD"
    erb :"songs/edit"
  end
end

delete '/songs/:id' do
  song = Song.find(params[:id]).destroy
  flash[:success] = 'DUMPED THAT SHIT'
  redirect '/'
end
