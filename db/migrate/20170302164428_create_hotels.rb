class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.integer :region_id
      t.integer :town_id
      t.string :name
      t.string :transcription

      t.timestamps
    end
  end
end
