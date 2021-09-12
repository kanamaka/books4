class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.new
  end

  def create
    @books = Book.new(book_params)
    @book = Book.new(book_params)
    if @book.save
        @book.user_id = current_user.id
        flash[:success] = "You have created book successfully."
    else
        redirect_to book_path(id: current_user)
    end
  end

  def index
    @books = Book.all
    @book = Book.all
    @book = Book.new
  end

  def show
    @books = Book.all
    @book = Book.all
    @book = Book.find_by(id:params[:id])
    @books = Book.find_by(id:params[:id])
    @users_id = params[:id]
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
