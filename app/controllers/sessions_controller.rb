class SessionsController < ApplicationController
  def new
    redirect_to posts_path if signed_in?
  end


  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      cookies[:auth_token] = user.auth_token
      redirect_to new_post_path
    else
      flash.now[:error] = "Invalid"
      render :new
    end
  end


  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url
  end


end
