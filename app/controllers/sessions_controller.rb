class SessionsController < ApplicationController
  def create
    #user = User.from_omniauth(env["omniauth.auth"])

		auth = env["omniauth.auth"]
		user = User.new
	  user.provider = auth.provider
	  user.uid = auth.uid
	  user.name = auth.info.name
	  user.oauth_token = auth.credentials.token
	  user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	  user.save!

    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
