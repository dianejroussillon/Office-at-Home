class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :photo
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end
