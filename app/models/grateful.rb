class Grateful < ActiveRecord::Base
  attr_accessible :gratitude

  belongs_to :user

  validates :gratitude, :presence => true, :length => { :maximum => 500 }
  validates :user_id, :presence => true

  default_scope :order => 'gratefuls.created_at DESC'
end
