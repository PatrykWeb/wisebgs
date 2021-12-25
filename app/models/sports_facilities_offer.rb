class SportsFacilitiesOffer < ApplicationRecord
  belongs_to :facility_sport
  belongs_to :panel

  searchkick

  SportsFacilitiesOffer.import
  SportsFacilitiesOffer.reindex
end
