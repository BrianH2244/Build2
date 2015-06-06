class BooksController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def books
    if signed_in?
      @book = Book.new
      @readfeed_items = current_user.readfeed.paginate(:page => params[:page])
    end
  end

  def create
    @book = current_user.books.build(params[:book])
    if @book.save
      flash[:success] = "Book entry created!"
      redirect_to books_path
    else
      @readfeed_items = []
      render 'books/books'
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

    def authorized_user
      @book = current_user.books.find_by_id(params[:id])
      redirect_to root_path if @book.nil?
    end
end
