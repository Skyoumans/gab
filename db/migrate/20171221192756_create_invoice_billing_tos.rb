class CreateInvoiceBillingTos < ActiveRecord::Migration[5.1]
  def change
    create_table :invoice_billing_tos do |t|
      t.string :company
      t.string :attn
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email

      t.timestamps
    end
  end
end
