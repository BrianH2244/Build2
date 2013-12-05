class Procrastinate1 < ActiveRecord::Base
  attr_accessible :procrastination1

  belongs_to :user

  validates :procrastination1, :presence => true, :length => { :maximum => 500 }
  validates :user_id, :presence => true

  default_scope :order => 'procrastinate1s.created_at DESC'
end
