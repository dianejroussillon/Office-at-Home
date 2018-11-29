class AddElementsToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :projector, :boolean, null: false, default: false
    add_column :flats, :screen, :boolean, null: false, default: false
    add_column :flats, :speaker, :boolean, null: false, default: false
    add_column :flats, :games, :boolean, null: false, default: false
    add_column :flats, :storage, :boolean, null: false, default: false
    add_column :flats, :coffee, :boolean, null: false, default: false
    add_column :flats, :fridge, :boolean, null: false, default: false
    add_column :flats, :teapot, :boolean, null: false, default: false
    add_column :flats, :kitchen, :boolean, null: false, default: false
    add_column :flats, :printer, :boolean, null: false, default: false
  end
end
