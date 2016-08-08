class User < ApplicationRecord

  has_many :recipes
  has_many :comments

#Restrictions   

# I need some email validation
# Title,description,difficulty cant be blank


# Difficulty need to be in {1..5} and cant be negative

# Preptime and cooktime cant negative 

#Restriction
  # Username 
  validates :username, presence: true, uniqueness: true
  validates :username, length: { in: 3..20 }

  #Difficulty 
  validates :difficulty, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }



  # validates :password, length: { in: 3..20 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
