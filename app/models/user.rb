class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :encryptable, :confirmable and :omniauthable
  devise :database_authenticatable, :token_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
end
