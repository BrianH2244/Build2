class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :encryptable, :confirmable and :omniauthable
  devise :database_authenticatable, :token_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  before_save :ensure_authentication_token

  has_many :savors
  has_many :habits
  has_many :improvements
  has_many :needs
  has_many :expansions
  has_many :projects
  has_many :weeks
  has_many :quotes
  has_many :funs

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    new_record?
  end

  def savoringfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Savor.where("user_id = ?", id)
  end

  def habitualfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Habit.where("user_id = ?", id)
  end

  def improvingfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Improvement.where("user_id = ?", id)
  end

  def needingfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Need.where("user_id = ?", id)
  end

  def expandingfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Expansion.where("user_id = ?", id)
  end

  def goalfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Project.where("user_id = ?", id)
  end

  def mitfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Week.where("user_id = ?", id)
  end

  def quotationfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Quote.where("user_id = ?", id)
  end

  def funnestfeed
    # This is preliminary. See Chapter 12 for the full implementation.
    Fun.where("user_id = ?", id)
  end
end
