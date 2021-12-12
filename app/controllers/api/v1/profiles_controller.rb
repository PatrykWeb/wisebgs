class Api::V1::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def create
    @profiles = Profile.new(profile_params)
    @profiles.user_id = @current_user_id
    if @profiles.save
      render :'api/v1/profiles/create', status: :created
    else
      render json: { errors: @profiles.errors.full_messages }
    end
  end

  def profile_params
    params.require(:profile).permit(:name, :surname, :phone, :nip, :krs)
  end
end
