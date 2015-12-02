class HomeController < ApplicationController
  def index
  	if session[:user_id]
  		redirect_to dashboard_path
  	end
  end

  def dashboard
  	@user = User.find(session[:user_id])
	@search = @user.searches.all.reverse[0..4]
  end
end