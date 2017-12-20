class CreatePeps < ActiveRecord::Migration[5.1]
  def change
    create_table :peps do |t|
      t.date :start_date
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
