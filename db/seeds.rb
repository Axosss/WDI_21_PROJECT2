
# This is to link the carrierwave/imageuploader images to the seed file 
# recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png') 


["recipes"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY")
end

Recipe.create([
  {title: "Eggs", description: "description is here",difficulty: 1, preptime: 1, cooktime: 1, ingredients: "Eggs obviously", directions:"1st step create a seed file then we will see", user_id: 1, recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png')}
])


{title: "Ramen Burger", 
description: "Delicious, and beautiful. Always cool to make.", 
difficulty: 3, 
servings: 1,
preptime: 50, 
cooktime: 10, 
ingredients: "1 pack of classic Ramen noodles (~200grams),100 grams of Beef, 1 egg, whatever sides you want (i choosed mushrooms and onions)", 
directions:"Cook the noodles (as it says on the pack you have),Rinse them so they get cold,Add the egg and mix,Let them cool in the fridge for at least 30min in a cup that has a round shape (or freezer 15min),When that is done cook the meat as wanted,Back to the noodles : Tcheck that their sticking together,Add some oil to your pan,Fry them on each side,Enjoy ", 
user_id: 1, 
recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png')}

{title: "Pasta, veggies and salami", 
description: "These pasta will make you travel the world in one bite", 
difficulty: 3, 
servings: 1, 
preptime: 20, 
cooktime: 20, 
ingredients: "1", 
directions:"Cook the noodles (as it says on the pack you have),Rinse them so they get cold,Add the egg and mix,Let them cool in the fridge for at least 30min in a cup that has a round shape (or freezer 15min),When that is done cook the meat as wanted,Back to the noodles : Tcheck that their sticking together,Add some oil to your pan,Fry them on each side,Enjoy ", 
user_id: 1, 
recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png')}