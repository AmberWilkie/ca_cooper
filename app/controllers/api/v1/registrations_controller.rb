class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  prepend_before_action :configure_permitted_params


  # protect_from_forgery with: :null_session
  # respond_to :json
  # 
  # def create
  #   super
  # end
end
