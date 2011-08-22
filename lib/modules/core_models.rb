module CoreModels

  def self.included(base)    
    base.class_eval do
      belongs_to    :user
      belongs_to    :assigned_to, :class_name => 'User'
      has_many      :activities, :as => :actable
      has_many      :tasks, :as => :taskable
      
      def self.access_levels
        [
          ['Private', 0],
          ['Shared', 1],
          ['Public', 2],
        ]
      end
      
    end
  end

end