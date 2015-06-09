class Admin::BooksController < ApplicationController

  layout 'admin'

  def index
    @books = book.all
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to admin_books_path
    else
      render :new
    end
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to admin_books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to admin_books_path
  end

  private book_params
    params.require(:book).permit(:title, :author, :price, :summary)
  end

end