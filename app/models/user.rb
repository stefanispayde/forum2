class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_secure_password
  validates :username, uniqueness: true
  validates :email, uniqueness: true



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
