class CreateStationGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :station_groups do |t|
      t.string :station_group
      t.string :organization
      t.string :phone_one
      t.string :phone_two
      t.string :fax
      t.string :group_email

      t.timestamps
    end
  end
end
