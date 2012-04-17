class Expansion < ActiveRecord::Base
  attr_accessible :expanding

  belongs_to :user

  validates :expanding, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'expansions.created_at DESC'
end
