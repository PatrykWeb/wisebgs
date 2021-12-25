# frozen_string_literal: true

class Panel < ApplicationRecord
  belongs_to :user
  has_many :facility_sports
  has_many :sports_facilities_offers
end
