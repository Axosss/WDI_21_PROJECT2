class Recipe < ApplicationRecord
  belongs_to :user
  # mount_uploader :recipe_image, RecipeImageUploader

#Multiple images uploader
  mount_uploaders :pictures, RecipeImageUploader
  
  has_many :comments

  #Difficulty 
  validates_inclusion_of :difficulty, in: 1..5
  validates_presence_of :title

  def ingredient_list
    return self.ingredients.nil? ? [] : self.ingredients.split(',')
  end

  def direction_list
    return self.directions.nil? ? [] : self.directions.split(',')
  end
end
