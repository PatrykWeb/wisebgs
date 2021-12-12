class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :phone, unique: true, null: false
      t.string :nip
      t.string :krs
      t.timestamps
    end
  end
end
