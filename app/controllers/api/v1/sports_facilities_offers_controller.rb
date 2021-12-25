class SportsFacilitiesOffersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_profile

  def index;end

  def search
    sports_facilities_offer = SportsFacilitiesOffer.search(params[:search])
    render json: { data: sports_facilities_offer }
  end

  def create
    sports_facilities_offer = SportsFacilitiesOffer.new(sports_facilities_offer_params)
    sports_facilities_offer.panel = current_panel_id
    if sports_facilities_offer.save
      render json: SportsFacilitiesOfferSerializer.new(sports_facilities_offer).serializable_hash
    end

  end

  def sports_facilities_offer_params
    params.require(:sports_facilities_offer).permit(:name, price, type_offer)
  end
end
