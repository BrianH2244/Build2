class Principle < ActiveRecord::Base
  attr_accessible :value

  belongs_to :user

  validates :value, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'principles.created_at DESC'
end
