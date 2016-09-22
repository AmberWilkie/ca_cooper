class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  prepend_before_action :configure_permitted_params


  # protect_from_forgery with: :null_session
  # respond_to :json
  #
  # def create
  #   super
  # end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end
end
