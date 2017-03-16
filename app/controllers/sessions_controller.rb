post '/sessions' do
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    log_in user
    redirect '/'
  else
    @login_error = "WRONG"
    erb :"static/login"
  end
end
