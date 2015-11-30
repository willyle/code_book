class HomeController < ApplicationController
  def index
  end

  def dashboard
  	@user = User.find(session[:user_id])
	@search = @user.searches.all.reverse[0..4]
  end
end