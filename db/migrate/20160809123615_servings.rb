class Servings < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :servings, :integer
  end
end
