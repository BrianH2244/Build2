class Question < ActiveRecord::Base
  attr_accessible :why

  belongs_to :user

  validates :why, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'questions.created_at DESC'
end
