class Recipe < ApplicationRecord
  belongs_to :user
  # mount_uploader :recipe_image, RecipeImageUploader

#Multiple images uploader
  mount_uploaders :pictures, RecipeImageUploader
  
  has_many :comments

  #Difficulty 
  validates :difficulty, inclusion: { in: [1,5] }

  def ingredient_list
    self.ingredients.split(',')
  end

  # def direction_list
  #   self.ingredients.split(',')
  # end
end
