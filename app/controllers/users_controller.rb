class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    find_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to '/users', notice: 'User was successfully created!'
    else
      render :new
    end
  end

  def edit
    find_user
  end

  def update
    find_user
    if @user.update(user_params)
      redirect_to '/users', notice: 'User was successfully updated!'
    else
      render :edit
    end
  end

  def destroy
    find_user
    @user.destroy
    redirect_to '/users', status: :see_other, notice: 'User was successfully deleted!'
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :e_mail)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end

end
