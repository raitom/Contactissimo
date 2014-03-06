class Adresse < ActiveRecord::Base
  belongs_to :adressable, :polymorphic => true
end
