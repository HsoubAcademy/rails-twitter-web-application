class ApplicationController < ActionController::Base
  private
  def authenticate_user!
    redirect_to new_user_session_path unless user_signed_in?
  end
end