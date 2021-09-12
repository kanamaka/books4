class UsersController < ApplicationController
  def new
    @users = User.new
  end

  def create
   flash[:notice] = "successfully"
   @users = users.new(users_params)
   @users.users_id = current_users.id
   @users.save
   redirect_to books_path
  end

  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def destroy
  end
  
  def edit
  end
  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
