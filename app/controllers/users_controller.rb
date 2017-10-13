class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.facebook_friends(current_user)
  end

  def show; end
end
