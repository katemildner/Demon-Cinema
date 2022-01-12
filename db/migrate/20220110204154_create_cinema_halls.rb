# frozen_string_literal: true

class CreateCinemaHalls < ActiveRecord::Migration[7.0]
  def change
    create_table :cinema_halls do |t|
      t.string :name, null: false
      t.integer :number_of_rows, null: false
      t.integer :number_of_columns, null: false

      t.timestamps
    end
  end
end
