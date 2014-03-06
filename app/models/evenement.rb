class Evenement < ActiveRecord::Base
  has_one :adresse, :as => :adressable

  validates_presence_of :nom, :theme
end
