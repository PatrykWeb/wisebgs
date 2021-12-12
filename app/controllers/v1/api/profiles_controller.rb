class V1::Api::ProfilesController < ApplicationController
  def create
    @profiles = Profile.new(profile_params)
    if @profiles.save
      render :'v1/api/profiles/create'
    end
  end

  def profile_params
    params.require(:profile).permit(:name, :surname, :phone, :nip, :krs)
  end
end
