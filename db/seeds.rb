
# This is to link the carrierwave/imageuploader images to the seed file 
# recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png') 


["recipes"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY")
end

User.create([
{username: "axoss",
first_name: "Axel",
last_name: "Berdugo",
description: "Self proclaimed the CookMaster. I love to cook and code. Admin of the website" ,
email: "axelberdugo@gmail.com"
},
{username: "JemJem",
first_name: "Jeremy",
last_name: "Smith",
description: "I'm a chef, even though i never told anyone. I secretly post recipes on this website because it's the best website" ,
email: "jemjem@gmail.com"
},
])


Recipe.create([
 {title: "Ramen Burger", 
 description: "Delicious, and beautiful. Always cool to make.", 
 difficulty: 3, 
 servings: 1,
 preptime: 50, 
 cooktime: 10, 
 ingredients: "1 pack of classic Ramen noodles (~200grams),100 grams of Beef, 1 egg, whatever sides you want (i choosed mushrooms and onions)", 
 directions:"Cook the noodles (as it says on the pack you have),Rinse them so they get cold,Add the egg and mix,Let them cool in the fridge for at least 30min in a cup that has a round shape (or freezer 15min),When that is done cook the meat as wanted,Back to the noodles : Tcheck that their sticking together,Add some oil to your pan,Fry them on each side,Enjoy", 
 user_id: 1, 
 recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png')},

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
])




