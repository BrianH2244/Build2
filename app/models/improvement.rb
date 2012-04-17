class Improvement < ActiveRecord::Base
  attr_accessible :improving

  belongs_to :user

  validates :improving, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'improvements.created_at DESC'
end
