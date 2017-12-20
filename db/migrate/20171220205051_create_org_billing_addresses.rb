class CreateOrgBillingAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :org_billing_addresses do |t|
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip
      t.string :country

      t.timestamps
    end
  end
end
