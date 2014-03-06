class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :adresse
      t.string :ville
      t.integer :code_postal

      t.timestamps
    end
  end
end
