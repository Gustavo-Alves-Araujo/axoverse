class HomeController < ApplicationController
  before_action :check_user_completed
  before_action :set_view_variables, only: %i[index]

  def index; end

  def profile; end

  def set_view_variables
    return unless current_user

    @page = params[:page] || 1

    chablau = User.all_except_contacts_of(current_user)

    @users_to_chat_with = User.where(id: chablau.map(&:id)).page @page

    @contacts = current_user.contacts

    @rooms = current_user.rooms.reverse

    @coringas = ['joker', 'moacir', 'gabigordo']
  end

  private

  def check_user_completed
    return if current_user&.valid? || !current_user

    redirect_to edit_user_path(current_user)
  end
end
