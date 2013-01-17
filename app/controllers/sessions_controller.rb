class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
   def destroy
    # Remove the user id from the session
    reset_session
    redirect_to root_path
  end
end