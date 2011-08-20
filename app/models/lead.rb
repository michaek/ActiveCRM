class Lead < ActiveRecord::Base
  include CoreModels

  belongs_to    :campaign
  has_one       :contact_datum, :as => :contactable
  has_many      :contacts
end
