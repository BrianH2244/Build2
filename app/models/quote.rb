class Quote < ActiveRecord::Base
  attr_accessible :quotation

  belongs_to :user

  validates :quotation, :presence => true, :length => { :maximum => 500 }
  validates :user_id, :presence => true

  default_scope :order => 'quotes.created_at DESC'
end
