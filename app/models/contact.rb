class Contact < ActiveRecord::Base
  has_one address, :as => :adressable
end
