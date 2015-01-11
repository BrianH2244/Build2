class Week < ActiveRecord::Base
  attr_accessible :mit

  belongs_to :user

  validates :mit, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'weeks.created_at DESC'
end
