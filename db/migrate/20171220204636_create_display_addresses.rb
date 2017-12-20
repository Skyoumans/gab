class CreateDisplayAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :display_addresses do |t|
      t.string :type
      t.string :name
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
