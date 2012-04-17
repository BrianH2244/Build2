class Habit < ActiveRecord::Base
  attr_accessible :habitual

  belongs_to :user

  validates :habitual, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'habits.created_at DESC'
end
