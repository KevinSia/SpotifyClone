before /\/users\/(\d+)(\/\w+)?/ do
  @user = User.find(params["captures"].first)
  pass if request.get? && params['captures'].second != '/edit'
  flash[:failure] = "NOT YOURS!"
  redirect '/' if current_user.id != @user.id
end

post "/users" do
  user = User.new(params[:user])
  if user.save
    log_in(user)
    redirect '/'
  else
    @new_error = "WRONG"
    erb :"static/login"
  end
end

get "/users/:id" do
  @user = User.includes(:playlists).where(id: params[:id]).first
  erb :"users/show"
end

get "/users/:id/edit" do
  @user = User.find_by_id(params[:id])
  erb :"users/edit"
end

patch "/users/:id" do
  if current_user.update(params[:user])
    flash[:success] = 'UPDATED YO'
    redirect "/users/#{current_user.id}"
  else
    @error = "WRONG!"
    erb "users/edit"
  end
end
