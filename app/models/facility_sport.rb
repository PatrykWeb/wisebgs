# frozen_string_literal: true

class FacilitySport < ApplicationRecord
  belongs_to :panel

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings index: { number_of_shards: 1 } do
    mapping dynamic: 'false' do
      indexes :id, type: :integer
      indexes :name, type: :string
      indexes :country, type: :string
      indexes :voivodeship, type: :string
      indexes :city, type: :string
      indexes :postal_code, type: :string
      indexes :street, type: :string
      indexes :status, type: :integer
      indexes :panel_id, type: :integer
      indexes :created_at, type: :date, format: :date_optional_time
      indexes :updated_at, type: :date, format: :date_optional_time
    end
  end


end
