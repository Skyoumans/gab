class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.string :type
      t.boolean :member
      t.boolean :sponsor
      t.string :phone_one
      t.string :phone_two
      t.string :fax
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
