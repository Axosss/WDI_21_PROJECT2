class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.integer :difficulty
      t.string :image
      t.integer :preptime
      t.integer :cooktime
      t.text :ingredients
      t.text :directions


      t.timestamps
    end
  end
end
