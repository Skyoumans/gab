class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :invoice_date
      t.string :type
      t.string :status
      t.string :description
      t.string :payment_type
      t.string :check_number
      t.integer :check_amount
      t.string :timing
      t.string :terms
      t.string :discount_rate
      t.date :date_due
      t.integer :date_deposit_amount_paid
      t.date :date_balance_due
      t.integer :subtotal_price
      t.integer :discount_amount
      t.integer :total
      t.integer :amount_paid
      t.integer :balance_paid
      t.integer :amount_due

      t.timestamps
    end
  end
end
