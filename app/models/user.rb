class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :encryptable, :confirmable and :omniauthable
  devise :database_authenticatable, :token_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  before_save :ensure_authentication_token

  def to_param
    name
  end
end
