class AddColumnHotelsAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :latitude, :float
    add_column :hotels, :longitude, :float
    add_column :hotels, :address, :strring
  end
end
