class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  prepend_before_action :validate_account_update_params
  protect_from_forgery with: :null_session


  protected
  def validate_account_update_params
    super
    # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :nickname) }
    #devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :name, :nickname])
  end
end
