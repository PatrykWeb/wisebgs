class CreateSportsFacilitiesOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :sports_facilities_offers do |t|
      t.string :name
      t.decimal :price
      t.integer :type_offer
      t.integer :facility_sport_id, null: false
      t.references :panel, foreign_key: true, null: false
      t.timestamps
    end
  end
end
