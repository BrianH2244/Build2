class Procrastinate3 < ActiveRecord::Base
  attr_accessible :procrastination3

  belongs_to :user

  validates :procrastination3, :presence => true, :length => { :maximum => 500 }
  validates :user_id, :presence => true

  default_scope :order => 'procrastinate3s.created_at DESC'
end
