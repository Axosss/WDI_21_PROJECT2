class User < ApplicationRecord

  has_many :recipes
  
  validates :username, presence: true, uniqueness: true
  validates :username, length: { in: 3..20 }

  # validates :password, length: { in: 3..20 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
