before /\/playlists\/(\d+)(\/\w+)?/ do
  @playlist = Playlist.find(params["captures"].first)
  pass if request.get? && params['captures'].second != '/edit'
  flash[:failure] = "NOT YOURS!"
  redirect '/' if current_user.id != @playlist.user_id
end

get '/playlists/:id' do
  erb :"playlists/show"
end

post '/playlists' do
  playlist = current_user.playlists.new(params[:playlist])
  if playlist.save
    flash[:success] = "DONE HAHA!"
    redirect '/'
  else
    @error = "ERROR MAN"
    erb :"playlists/new"
  end
end

get '/playlists/:id/edit' do
  erb :"playlists/edit"
end

patch '/playlists/:id' do
  if playlist.update(params[:playlist])
    flash[:success] = 'CHANGED DAT SHIT!'
    redirect '/'
  else
    @error = "ERROR MAN NO GOOD"
    erb :"playlists/edit"
  end
end

delete '/playlists/:id' do
  @playlist.destroy
  flash[:success] = 'DUMPED THAT SHIT'
  redirect '/'
end
