class SessionsController < ApplicationController

  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email])
    
    if @user.default? && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    elsif @user.admin? && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to admin_dashboard_index_path
    else
      
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end