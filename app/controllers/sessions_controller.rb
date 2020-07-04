class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_id(params[:id])
     if user
      session[:id] = user.id
      redirect_to new_session_path, notice: "Logged in!"

    else
      flash.now[:alert] = "Email or password is invalid"
       redirect_to new_session_path
    end
  end  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
