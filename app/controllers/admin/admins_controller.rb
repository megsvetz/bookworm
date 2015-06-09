class Admin::AdminsController < ApplicationController

  def new
    @new_admin = Admin.new
  end

  def create
    @new_admin = Admin.new(new_admin_params)
    if @new_admin.save
      session[:admin_id] = @new_admin.id
      redirect_to admin_books_path
    else
      render :new
    end
  end

  private

  def new_admin_params
    params.require(:admin).permit(:username, :email, :password, :password_confirmation)
  end

end