class CreateCommunications < ActiveRecord::Migration[5.1]
  def change
    create_table :communications do |t|
      t.string :phone_one
      t.string :phone_two
      t.string :cell
      t.string :fax
      t.string :email

      t.timestamps
    end
  end
end
