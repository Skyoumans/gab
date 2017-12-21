class CreateInvoiceClients < ActiveRecord::Migration[5.1]
  def change
    create_table :invoice_clients do |t|
      t.string :organization
      t.string :station_group
      t.string :station

      t.timestamps
    end
  end
end
