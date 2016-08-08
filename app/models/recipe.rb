class Recipe < ApplicationRecord
belongs_to :user
mount_uploader :recipe_image, RecipeImageUploader
has_many :comments
end
