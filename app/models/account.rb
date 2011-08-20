class Account < ActiveRecord::Base
  include CoreModels
  
  has_one       :address, :as => :addressable
  has_one       :contact_datum, :as => :contactable
  has_many      :account_contacts, :dependent => :destroy
  has_many      :contacts, :through => :account_contact
end
