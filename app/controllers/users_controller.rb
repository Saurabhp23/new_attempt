class UsersController < ApplicationController
  def show
      @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :about))
    if @user.save
      flash[:notice]="user created successfully"
      redirect_to @user
    else
      render 'new'
    end
    
  end
end