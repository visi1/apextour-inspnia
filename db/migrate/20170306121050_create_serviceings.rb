class CreateServiceings < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels_services do |t|
      t.references :hotel
      t.references :service
    end
  end
end
