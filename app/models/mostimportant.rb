class Mostimportant < ActiveRecord::Base
  # attr_accessible :title, :body
end

  attr_accessible :mostimportantly

  belongs_to :user

  validates :mostimportantly, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'mostimportants.created_at DESC'
