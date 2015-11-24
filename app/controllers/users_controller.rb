class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    if params[:password].length > 5
      @user = User.new(user_params)
      if @user.save
        Profile.create(email: params[:email], user_id: @user.id)
        flash[:notice] = "User created, please sign in."
        redirect_to sign_in_path
      else 
        flash[:alert] = "There was an issue"
        redirect_to sign_up_path
      end
    else
       flash[:alert] = "There was an issue"
       redirect_to sign_up_path
    end
  end

  def edit
    @profile = @user.profile
  end

  def update
    @user.update(edit_user_params)
    @profile = @user.profile
    @profile.update(profile_params)
    puts "***********"
    puts @profile.errors.full_messages
    redirect_to user_path(@user), notice: "Sucessfully updated profile."
  end

  def show
    @user = User.find(params[:id])
    @profile = @user.profile
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Account has been deleted."
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(:username, :password, :password_confirmation)
    end

    def edit_user_params
      params.require(:user).permit(:username)
    end
    def profile_params
      params.require(:profile).permit(:fname, :lname, :email, :birthday, :work, :exp_level)
    end
end