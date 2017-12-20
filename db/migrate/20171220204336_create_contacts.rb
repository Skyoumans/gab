class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.boolean :board_member
      t.string :recognition
      t.string :status
      t.string :image

      t.timestamps
    end
  end
end
