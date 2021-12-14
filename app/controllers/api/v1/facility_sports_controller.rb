
module Api
  module V1
    class FacilitySportsController < ApplicationController
      before_action :authenticate_user!
      before_action :check_profile

      def create
        
      end

      def facility_sports_params
        params.require(:facility_sport).permit(:name, :country, :voivodeship, :city, :postal_code, :street, :status)
      end

    end
  end
end

