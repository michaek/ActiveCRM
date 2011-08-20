class Email < ActiveRecord::Base
  belongs_to    :user
  belongs_to    :emailable, :polymorphic => :true
end
