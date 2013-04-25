class AuthenticationsController < ApplicationController
  # GET /authentications
  # GET /authentications.json
  def index
  end

  # POST /authentications
  # POST /authentications.json
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    User.update(user.id, :fb_nickname => auth["info"]["nickname"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  # DELETE /authentications/1
  # DELETE /authentications/1.json
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
