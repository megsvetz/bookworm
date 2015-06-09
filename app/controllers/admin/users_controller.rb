class Admin::UsersController < ApplicationController

  def new
    @new_admin = Admin.new
  end

  def create
  end

end