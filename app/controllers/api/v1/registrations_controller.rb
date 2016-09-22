class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  # before_action :account_update_params
  protect_from_forgery with: :null_session
  # before_action :validate_account_update_params, only: :update
  # skip_before_action :verify_authenticity_token, only: :update


  protected
  def account_update_params
    params.permit(:name, :nickname, :email, :password, :password_confirmation, :current_password)
  end

  # def validate_account_update_params
  #   super
  # end
end
