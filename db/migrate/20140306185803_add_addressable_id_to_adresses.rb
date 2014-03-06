class AddAddressableIdToAdresses < ActiveRecord::Migration
  def change
    add_column :adresses, :adressable_id, :integer
    add_column :adresses, :adressable_type, :string
  end
end
