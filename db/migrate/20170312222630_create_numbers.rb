class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.string :name
      t.date :date_start
      t.date :date_finish
      t.integer :one_person
      t.integer :two_person
      t.integer :additional_space
      t.belongs_to :hotel

      t.timestamps
    end
  end
end
