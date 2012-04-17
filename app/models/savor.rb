class Savor < ActiveRecord::Base
  attr_accessible :savoring

  belongs_to :user

  validates :savoring, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'savors.created_at DESC'
end
