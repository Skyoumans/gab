class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :call_letters
      t.string :slogan
      t.string :airing_type
      t.string :frequency
      t.string :organization
      t.string :station_group
      t.string :city_of_license
      t.string :phone_one
      t.string :phone_two
      t.string :fax
      t.string :email
      t.string :website
      t.boolean :member
      t.string :type
      t.string :dues_exp
      t.boolean :current
      t.string :gm
      t.string :gm_email
      t.string :county
      t.string :format
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
