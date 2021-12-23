class CreateSportsFacilitiesOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :sports_facilities_offers do |t|
      t.string :name
      t.string :price
      t.string :type_offer
      t.references :facility_sports, foreign_key: true, null: false
      t.references :panel, foreign_key: true, null: false
      t.timestamps
    end
  end
end
