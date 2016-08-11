class Recipe < ApplicationRecord
  belongs_to :user
  # mount_uploader :recipe_image, RecipeImageUploader

#Multiple images uploader
  mount_uploaders :pictures, RecipeImageUploader
  
  has_many :comments

  #Difficulty 
  validates_inclusion_of :difficulty, in: 1..5

  validates_inclusion_of :servings, in: 1..20
  
  validates_presence_of :preptime
  validates_inclusion_of :preptime, in: 1..500
  
  validates_presence_of :cooktime
  validates_inclusion_of :cooktime, in: 1..1200

  validates_presence_of :ingredients
  validates_presence_of :directions

  
# JS that does the line appear when you type 
  def ingredient_list
    return self.ingredients.nil? ? [] : self.ingredients.split(',')
  end

  def direction_list
    return self.directions.nil? ? [] : self.directions.split(',')
  end

  def difficulty_image
    case difficulty
      when 1
        "/items/logos_template/difficulty1.png"
      when 2
         "/items/logos_template/difficulty2.png"
      when 3
         "/items/logos_template/difficulty3.png"
      when 4
         "/items/logos_template/difficulty4.png"
      when 5
         "/items/logos_template/difficulty5.png"
    end
  end
end
