class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.references :person, index: true
      t.references :location_type, index: true

      t.timestamps
    end
  end
end
