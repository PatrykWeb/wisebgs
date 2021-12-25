class SportsFacilitiesOfferSerializer
  include JSONAPI::Serializer
  attributes :name, :price, :type_offer, :facility_sport_id
  belongs_to :facility_sport
end
