class ChangeServingsStringToInteger < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :servings
  end
end
