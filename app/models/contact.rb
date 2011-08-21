class Contact < ActiveRecord::Base
  include CoreModels

  belongs_to    :lead
  belongs_to    :reports_to, :class_name => 'Contact'
  has_one       :address, :as => :addressable
  has_one       :contact_datum, :as => :contactable
  belongs_to    :login, :class_name => 'User', :foreign_key => :login_id
  has_many      :account_contacts, :dependent => :destroy
  has_many      :accounts, :through => :account_contact
  has_many      :subordinates, :as => :reports_to, :class_name => 'Contact'
  has_many      :opportunities
  
  def name
    "%s %s" % [first_name, last_name]
  end
end
