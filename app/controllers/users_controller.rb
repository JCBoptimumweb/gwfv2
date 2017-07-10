class UserController < ApplicationController
  def index
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:fullname, :name)
  end
end
