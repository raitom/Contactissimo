class Adresse < ActiveRecord::Base
  belongs_to :adressable, :polymorphic => true

  validates_presence_of :adresse, :ville, :code_postal, :adressable_id, :adressable_type
  validates :code_postal, length: {is: 5}
end
