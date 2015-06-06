class Book < ActiveRecord::Base
  attr_accessible :read

  belongs_to :user

  validates :read, presence: true, length: { maximum: 1000 }
  validates :user_id, :presence => true

  default_scope :order => 'books.created_at DESC'
end
