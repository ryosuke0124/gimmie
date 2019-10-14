class UsersController < ApplicationController
  before_action :logical_delete_user
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    # unless @user.id == current_user.id
    # redirect_to user_path(@current_user)
  end

  private
   def user_params
    params.require(:user).permit(:email, :encrypted_password, :profile_image_id)
   end

end
