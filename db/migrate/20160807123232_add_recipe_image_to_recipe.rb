class AddRecipeImageToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :recipe_image, :string
  end
end
