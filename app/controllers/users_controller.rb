class UsersController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
