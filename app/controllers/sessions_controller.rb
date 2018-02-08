class SessionsController < ApplicationController
  def new

  end

  def create
    if @user = User.find_by(:username => params[:user][:username])
       if @user && @user.authenticate(params[:user][:password])
         session[:user_id] = @user.id
         redirect_to user_path(@user)
       else
         render :new
       end
     else
       redirect_to new_user_path
     end
  end


  def destroy
    reset_session
     redirect_to root_path
  end

end
