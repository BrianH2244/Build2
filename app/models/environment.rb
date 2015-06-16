class Environment < ActiveRecord::Base
  attr_accessible :change

  belongs_to :user

  validates :change, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'environments.created_at DESC'
end
