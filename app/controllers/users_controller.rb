class UsersController < ApplicationController
  before_action :logical_delete_user
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # unless @user.id == current_user.id
    # redirect_to user_path(@current_user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def following
    @user = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end
  def likes
    @user = current_user
    @likes = @user.likes
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
   def user_params
    params.require(:user).permit(:email, :encrypted_password, :profile_image)
   end

end
