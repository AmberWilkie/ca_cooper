class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  prepend_before_action :configure_permitted_parameters
  protect_from_forgery with: :null_session


  protected
  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :nickname) }
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :name, :nickname])
  end
end
