class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
   flash[:notice] = "successfully"
   @user = Users.new(users_params)
   @user.users_id = current_users.id
   @user.save
   redirect_to books_path
  end

  def index
    @book = Book.new
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
    @users = User.new

  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def update
    flash[:notice] = "You have updated user successfully."
    @user = User.find(params[:id])
    if @user.update(user_params)
     redirect_to user_path(@user.id)
    else
     render :edit
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
