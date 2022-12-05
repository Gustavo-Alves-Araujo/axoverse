# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user
  before_action :authenticate_user

  def set_user
    @user = User.find(params[:id])
  end

  def authenticate_user
    return if current_user == @user

    redirect_to root_path
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice: 'Usuario editado'
    else
      flash[:error] = 'Algo deu muito errado, por favor digite novamente'
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :profile_picture, :biografia, :age)
  end
end
