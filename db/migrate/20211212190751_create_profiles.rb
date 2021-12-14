# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :firstname, null: false
      t.string :surname, null: false
      t.string :phone, unique: true, null: false
      t.string :nip
      t.string :krs
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
