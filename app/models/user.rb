class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :encryptable, :confirmable and :omniauthable
  devise :database_authenticatable, :token_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  before_save :ensure_authentication_token

  has_many :projects
  has_many :weeks

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    new_record?
  end

  def goalfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Project.where("user_id = ?", id)
  end

  def mitfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Week.where("user_id = ?", id)
  end
end
