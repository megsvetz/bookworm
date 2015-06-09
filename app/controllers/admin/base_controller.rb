class Admin::BaseController < ApplicationController

  layout "admin"

  def index
    @books = Book.all
  end

end
