class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up! Great job, old bean!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update

  end

  def edit

  end

  def destroy

  end

   private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
