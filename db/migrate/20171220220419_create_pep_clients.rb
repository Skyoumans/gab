class CreatePepClients < ActiveRecord::Migration[5.1]
  def change
    create_table :pep_clients do |t|
      t.string :client
      t.string :ISCI/AD-ID
      t.string :time
      t.string :name
      t.integer :min_airs

      t.timestamps
    end
  end
end
