class PagesController < ApplicationController
  helper_method :title, :price, :author

  def index
    if params[:order_by]
      @books = Book.all.order(params[:order_by].to_sym)
    else
      @books = Book.all
    end

    #if var = 'title'
     # @books = Book.all.order(:title)
    #elsif var = 'price'
     # @books = Book.all.order(:price)
    #elsif var = 'author'
     # @books = Book.all.order(:author)
    #end  
  end

  def title
    @books = Book.all.order(:title)
  end

  def price
    @books = Book.all.order(:price)
  end

  def author
    @books = Book.all.order(:author)
  end

end