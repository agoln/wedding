class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :url, :name, :role, :position, :admin

  scope :role, lambda { |role| 
    where("role = ?", role).order("position asc")
  }

  def admin?
    admin
  end
end
