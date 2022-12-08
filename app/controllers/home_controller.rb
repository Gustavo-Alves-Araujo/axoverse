class HomeController < ApplicationController
  before_action :check_user_completed
  before_action :set_view_variables, only: %i[index]

  def index; end

  def profile; end

  def ajudeme; end

  def set_view_variables
    return unless current_user

    @users_to_chat_with = User.all_except_contacts_of(current_user).first(3)
    @contacts = current_user.contacts
    @rooms = current_user.rooms
  end

  private

  def check_user_completed
    return if current_user&.valid? || !current_user

    redirect_to edit_user_path(current_user)
  end
end

# before_action :dispatch_user

#   def dispatch_user
#     return unless current_user && request.get?

#     path = new_profile_path unless current_user.valid?
#     path = dashboards_path if request.path == root_path

#     redirect_to path unless path.nil? || path == request.path
#   end
