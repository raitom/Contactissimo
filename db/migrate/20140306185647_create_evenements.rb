class CreateEvenements < ActiveRecord::Migration
  def change
    create_table :evenements do |t|
      t.string :nom
      t.string :theme
      t.date :date

      t.timestamps
    end
  end
end
