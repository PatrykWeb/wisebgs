# frozen_string_literal: true

module Api
  module V1
    class FacilitySportsController < ApplicationController
      # before_action :authenticate_user!
      # before_action :check_profile

      def search
        facility_sports = FacilitySport.search(params[:search])
        render json: { data: facility_sports  }
      end

      def index
        facility_sports = FacilitySport.all
        render json: FacilitySportsSerializer.new(facility_sports).serializable_hash
      end

      def edit_id
        facility_sports = FacilitySport.find(params[:id])
        render json: FacilitySportsSerializer.new(facility_sports).serializable_hash if facility_sports.update_attribute(facility_sports_params)
      end

      def create
        facility_sports = FacilitySport.new(facility_sports_params)
        panel = Panel.find_by(user_id: @current_user_id)
        facility_sports.panel_id = panel.id
        if facility_sports.save
          render json: FacilitySportsSerializer.new(facility_sports).serializable_hash
        else
          render json: { errors: facility_sports.errors.full_messages }
        end
      end

      def facility_sports_params
        params.require(:facility_sport).permit(:name, :country, :voivodeship, :city, :postal_code, :street, :status)
      end
    end
  end
end
