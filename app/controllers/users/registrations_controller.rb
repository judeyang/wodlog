class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:is_owner,:name])
    devise_parameter_sanitizer.permit(:account_update , keys: [:is_owner,:name])
  end
end
