class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logedd in"
      redirect_to new_article_path(user)
    else
      flash.now[:danger] = "There was something wrong with your login information."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have loged out"
    redirect_to root_path
  end

end
