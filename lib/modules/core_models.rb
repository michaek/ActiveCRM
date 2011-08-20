module CoreModels

  def self.included(base)    
    base.class_eval do
      belongs_to    :user
      belongs_to    :assigned_to, :class_name => 'User'
      has_many      :activities, :as => :actable
      has_many      :comments, :as => :commentable
      has_many      :tasks, :as => :taskable
    end
  end

end