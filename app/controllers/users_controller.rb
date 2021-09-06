class UsersController < ApplicationController
  def new
  end

  def create
   flash[:notice] = "successfully"
  end

  def index
  end

  def show
  end

  def destroy
  end
end
