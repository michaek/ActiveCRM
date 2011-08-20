class Opportunity < ActiveRecord::Base
  include CoreModels

  belongs_to    :campaign
  belongs_to    :account
  belongs_to    :contact
end
