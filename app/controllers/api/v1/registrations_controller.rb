class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  prepend_before_action :validate_account_update_params
  protect_from_forgery with: :null_session


  protected
  def account_update_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation, :current_password)
  end
end
