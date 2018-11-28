class AddFeatureToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :feature, :string
  end
end
