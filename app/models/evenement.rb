class Evenement < ActiveRecord::Base
  has_one :adresse, :as => :adressable
end
