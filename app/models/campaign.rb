class Campaign < ActiveRecord::Base
  include CoreModels
  
  has_many      :leads
  has_many      :opportunities
end
