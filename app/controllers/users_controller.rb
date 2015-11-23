class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User created, please sign in."
      redirect_to sign_in_path
    else 
      flash[:alert] = "There was an issue"
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user), notice: "Sucessfully updated profile."
  end

  def show
    @cards = @user.cards
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: "Account has been deleted."
  end
  
  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require.permit(:username, :email, :password, :password_confirmation)
  end
end