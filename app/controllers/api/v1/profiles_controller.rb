# frozen_string_literal: true

module Api
  module V1
    class ProfilesController < ApplicationController
      before_action :authenticate_user!

      def create
        profiles = Profile.new(profile_params)
        panel = Panel.new(type_panel: 0, user_id: @current_user_id)
        profiles.user_id = @current_user_id
        if profiles.save && panel.save
          render json: ProfilesSerializer.new(profiles).serializable_hash
        else
          render json: { errors: profiles.errors.full_messages }
        end
      end

      def profile_params
        params.require(:profile).permit(:firstname, :surname, :phone, :nip, :krs)
      end
    end
  end
end
