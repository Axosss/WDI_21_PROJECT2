
# This is to link the carrierwave/imageuploader images to the seed file 
# recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png') 


["recipes"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY")
end

Recipe.create([
  {title: "Eggs", description: "description is here",difficulty: 1, preptime: 1, cooktime: 1, ingredients: "Eggs obviously", directions:"1st step create a seed file then we will see", user_id: 1, recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png')}


])


