class Journal < ActiveRecord::Base
  attr_accessible :event

  belongs_to :user

  validates :event, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'journals.created_at DESC'
end
