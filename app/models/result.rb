class Result < ActiveRecord::Base
  attr_accessible :what

  belongs_to :user

  validates :what, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'results.created_at DESC'
end
