class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :profile_name,:email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates_presence_of :first_name, :message => "You must type in your first name in order to continue with the registration process"
  validates_presence_of :last_name, :message => "You must type in your last name in order to continue with the registration process"
  validates_presence_of :profile_name, :message => "You must type in a valid profile name in order to continue with the registration process"
  validates_uniqueness_of :profile_name
  has_many :statuses
  def full_name
    first_name + " " + last_name
  end
end
