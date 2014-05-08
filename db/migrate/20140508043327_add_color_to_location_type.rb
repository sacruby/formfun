class AddColorToLocationType < ActiveRecord::Migration
  def change
    add_column :location_types, :color, :string
  end
end
