class HomeController < ApplicationController
  def index
  end

  def dashboard
  	@user = User.find(session[:user_id])
  end
end