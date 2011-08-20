class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true

  default_scope :order => 'created_at ASC'

  attr_accessible :title, :comment, :commentable_id, :parent_id, :commentable_type
  validates_presence_of :comment, :commentable_id, :commentable_type

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Uses acts_as_tree for comment threading
  acts_as_tree

  # NOTE: Comments belong to a user
  belongs_to :user
end
