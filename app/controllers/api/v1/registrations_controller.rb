class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  before_action :account_update_params
  protect_from_forgery with: :null_session


  protected
  def account_update_params
    params.permit(:name, :nickname, :email, :password, :password_confirmation, :current_password)
  end

  def validate_account_update_params
    super
  end
end
