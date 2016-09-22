class Api::V1::PerformanceDataController < ApplicationController
  before_action :authenticate_api_v1_user!
  def create
    @data = PerformanceData.new(performance_data_params.merge(user: current_api_v1_user))
    if @data.save
      render json: ({message: 'Run baby run!'})
    else
      render json: ({error: @data.errors.full_messages})
    end
  end

  def performance_data_params
    params.require(:performance_data).permit!
  end

  def index
    @collection = current_api_v1_user.performance_data
    render json: { entries: @collection }
  end
end
