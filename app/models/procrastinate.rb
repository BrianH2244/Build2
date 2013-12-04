class Procrastinate < ActiveRecord::Base
  attr_accessible :procrastination

  belongs_to :user

  validates :procrastination, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'procrastinates.created_at DESC'
end
