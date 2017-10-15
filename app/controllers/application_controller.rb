class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def verify_authorization
    redirect_to root_path unless current_user
  end
end
