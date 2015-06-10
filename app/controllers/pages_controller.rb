class PagesController < ApplicationController

  def index
    if params[:order_by]
      @books = Book.all.order(params[:order_by].to_sym)
    else
      @books = Book.all
    end
  end
end