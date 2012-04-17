class Need < ActiveRecord::Base
  attr_accessible :needing

  belongs_to :user

  validates :needing, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'needs.created_at DESC'
end
