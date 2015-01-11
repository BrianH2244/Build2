class Project < ActiveRecord::Base
  attr_accessible :goal

  belongs_to :user

  validates :goal, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'projects.created_at DESC'
end
