class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end    
  end

  private
  def book_params
    params.require(:book).permit(:title, :reed, :understand, :text, :action, :link, :image).merge(user_id: current_user.id)
  end

end