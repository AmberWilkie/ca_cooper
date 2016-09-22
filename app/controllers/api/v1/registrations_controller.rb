class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  prepend_before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :nickname) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :name, :nickname) }
  end
end
