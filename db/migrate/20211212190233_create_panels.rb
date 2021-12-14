# frozen_string_literal: true

class CreatePanels < ActiveRecord::Migration[6.1]
  def change
    create_table :panels do |t|
      t.integer :type_panel
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
