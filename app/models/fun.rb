class Fun < ActiveRecord::Base
  attr_accessible :funnest

  belongs_to :user

  validates :funnest, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'funs.created_at DESC'
end
