class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    flash[:notice] = "successfully"
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
       flash[:success] = "You have created book successfully."
       redirect_to book_path(@book.id)
    else
     render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @books = Book.all
    @newbook = Book.new
    @book = Book.find_by(params[:id])
    @users_id = params[:id]
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
