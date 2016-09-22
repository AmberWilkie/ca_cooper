class Api::V1::RegistrationsController < DeviseTokenAuth::RegistrationsController
  protect_from_forgery with: :null_session
  respond_to :json

  def create
    super
  end
end
