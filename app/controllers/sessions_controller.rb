class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to '/login'
  end

end
