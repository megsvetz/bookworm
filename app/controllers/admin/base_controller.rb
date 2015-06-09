class Admin::BaseController < ApplicationController

  layout "admin"

  def index
    #this is for logging in
  end

  def create
    @admin = Admin.where(username: params[:username]).first
    if @admin.present? && @admin.authenicate(params[:password])
      session[:admin_id] = @admin.admin_id
      flash[:notice] = 'Welcome Admin'
      redirect_to admin_books_path
    else
      flash[:alert] = 'Oops! You entered a wrong username or password.'
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to admin_books_path
  end
end
