class Recipe < ApplicationRecord
belongs_to :user
mount_uploader :recipe_image, RecipeImageUploader
has_many :comments

#Difficulty 
validates :difficulty, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }

end
