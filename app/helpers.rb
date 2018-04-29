helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:id])
    if !@current_user
      redirect '/login'
    end
  end
end
