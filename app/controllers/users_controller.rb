class UsersController < ApplicationController


  def show
    @user = User.find(params[:id]) # 1 en la tabla User buscar el usuario 1 y guardarlo en @user
  end





  def new
    @user = User.new
  end





  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!" # 1
      redirect_to @user # 1
# Handle a successful save
    else
      render 'new'
    end
  end


  private # internal to Users controller


  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
