# frozen_string_literal: true

class CreateFacilitySports < ActiveRecord::Migration[6.1]
  def change
    create_table :facility_sports do |t|
      t.string :name
      t.string :country
      t.string :voivodeship
      t.string :city
      t.string :postal_code
      t.string :street
      t.integer :status
      t.references :panel, foreign_key: true, null: false
      t.timestamps
    end
  end
end
