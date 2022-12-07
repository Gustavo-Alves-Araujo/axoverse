class RegistrationsController < Devise::RegistrationsController
  private

  def after_sign_up_path_for(resource)
    "/users/#{resource.id}/edit"
  end

  def after_inactive_sign_up_path_for(resource)
    "/users/#{resource.id}/edit"
  end
end
