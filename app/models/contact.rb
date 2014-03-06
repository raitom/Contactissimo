class Contact < ActiveRecord::Base
  has_one :adresse, :as => :adressable

  validates_presence_of :nom, :prenom
end
