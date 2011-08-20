class Task < ActiveRecord::Base
  include CoreModels

  belongs_to    :completed_by, :class_name => 'User'
end
