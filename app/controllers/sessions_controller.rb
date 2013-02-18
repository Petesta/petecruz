class SessionsController < ApplicationController
  def new
    return redirect_to expenses_path if signed_in?
  end


  def create
    if user & user.authenticate(params[:password])
      cookies[:auth_token] = user.auth_token

      path = (user.groups.blank?) ? welcome_path : expenses_path
      return redirect_to_return_or_path(path)
    else
      flash.now[:error] = "Invalid"
      return render :new
    end
  end


  def destroy
    cookies.delete(:auth_token)
    return redirect_to root_url
  end


end
