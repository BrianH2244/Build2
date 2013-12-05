class Procrastinate2 < ActiveRecord::Base
  attr_accessible :procrastination2

  belongs_to :user

  validates :procrastination2, :presence => true, :length => { :maximum => 500 }
  validates :user_id, :presence => true

  default_scope :order => 'procrastinate2s.created_at DESC'
end
