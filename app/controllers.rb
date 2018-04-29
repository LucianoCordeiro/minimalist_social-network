get '/' do
  current_user
  erb :show
end

get '/user=:id' do
  @user = User.find(params[:id])
  @posts = @user.posts
  current_user
  erb :posts
end

get '/login' do
  erb :login
end

post '/login' do
  @user = User.find_by(name: params[:user][:name])
  if @user
    session[:id] = @user.id
    redirect '/'
  else
    redirect '/login'
  end
end

get '/logout' do
  session.delete(:id)
  redirect '/login'
end
