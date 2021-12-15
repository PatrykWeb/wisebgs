# frozen_string_literal: true

class FacilitySportsSerializer
  include JSONAPI::Serializer
  set_type :facility_sport
  attributes :name, :country, :voivodeship, :city, :postal_code, :street, :status
  # belongs_to :panel
end
