
# This is to link the carrierwave/imageuploader images to the seed file 
# recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png') 


["comments","recipes","users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "axoss",
  first_name: "Axel",
  last_name: "Berdugo",
  description: "Self proclaimed the CookMaster. I love to cook and code. Admin of the website",
  email: "axelberdugo@gmail.com",
  password: "password",
  password_confirmation: "password"
},
{
  username: "JemJem",
  first_name: "Jeremy",
  last_name: "Smith",
  description: "Philippino chef, I cook for code tips. I post recipes on this website because it's the best website" ,
  email: "jemjem@gmail.com",
  password: "password",
  password_confirmation: "password"
},
{
  username: "Becks",
  first_name: "Becky",
  last_name: "Bolton",
  description: "",
  email: "becky@bolton.com",
  password: "password",
  password_confirmation: "password"
},
{
  username: "Kaitlyn",
  first_name: "Kaitlyn",
  last_name: "Tierney",
  description: "",
  email: "kaitlyn@tierney.com",
  password: "password",
  password_confirmation: "password"
},
{
  username: "CallCal",
  first_name: "Callum",
  last_name: "Goodwilliam",
  description: "I secretly cook in the GA kitchen when everybody is gone",
  email: "callum@ga.com",
  password: "password",
  password_confirmation: "password"
},
{
  username: "ShuMaster",
  first_name: "Shu-yang",
  last_name: "Chia",
  description: "I was supposed to go to mars because I use to hate society. But now that this website exist my life changed completly",
  email: "Shu-master@chia.com",
  password: "password",
  password_confirmation: "password"
}
])

Recipe.create!([{
  title: "Ramen Burger", 
  description: "Delicious, and beautiful. Always cool to make.", 
  difficulty: 3, 
  servings: 1,
  preptime: 50, 
  cooktime: 10, 
  ingredients: "1 pack of classic Ramen noodles (~200grams),100 grams of Beef, 1 egg, whatever sides you want (i choosed mushrooms and onions)", 
  directions:"Cook the noodles (as it says on the pack you have),Rinse them so they get cold,Add the egg and mix,Let them cool in the fridge for at least 30min in a cup that has a round shape (or freezer 15min),When that is done cook the meat as wanted,Back to the noodles : Tcheck that their sticking together,Add some oil to your pan,Fry them on each side,Enjoy", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/ramen/ramen1.JPG')]
},
{
  title: "Pasta, veggies and salami", 
  description: "These pasta will make you travel the world in one bite", 
  difficulty: 3, 
  servings: 4, 
  preptime: 20, 
  cooktime: 20, 
  ingredients: "300gr of pasta,2 cloves of garlic,1 large onions,8 small tomatoes,8 small mushrooms (or 2 big ones),4 slices of salami, 200gr mozzarella", 
  directions:"I would suggest to start with the sauce first, Choppe all the veggies,Oil in the pan,Cook the veggies ,Cook the pasta of your choice (as it says on the pack you have),Mix it all,Add chopped mozzarella,Enjoy ", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/pasta/pastav1_done.JPG')]
},
{
  title: "Quesadilla with pasta", 
  description: "Terribly good", 
  difficulty: 1, 
  servings: 4, 
  preptime: 10, 
  cooktime: 20, 
  ingredients: "2 large flour tortillas,Pastas from a previous diner,1 clove of garlic,1 large onions,4 slices of salami,200gr gratted cheese (in my case mozzarella),Couple of basil leaf", 
  directions:"Chop onion garlic and red pepper,Add a tablespoon of oil in a pan and fry the onions, garlic and pepper on medium heat, let it chill for 7-10 min while stiring to cook them evenly,Deglaze 1/4 of water,let it chill until water evaporates,When thats done lets it chill on the side and the first layer of tortilla,Add the gratted cheese and the veggies we left on the side,Add the 2nd tortilla on top,Turnover the tortilla (plate on top of the pan and turnover),Enjoy ", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/pasta/pastav1_done.JPG')]
},
{
  title: "No picture because i live in the 20th century", 
  description: "Terribly good", 
  difficulty: 2, 
  servings: 4, 
  preptime: 10, 
  cooktime: 20, 
  ingredients: "h", 
  directions:"h", 
  user_id: 2, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/bbq/bqq2.jpg')]
},
{
  title: "Bacon egg cups ", 
  description: "Yes son, your not dreaming", 
  difficulty: 2, 
  servings: 1, 
  preptime: 10, 
  cooktime: 7, 
  ingredients: "4 slices of bacon,4 egg,1 Tbsp grated parmesan cheese,Salt and black pepper,2 Tbsp chopped scallions", 
  directions:"Preheat oven to 375°F,Par cook the bacon slices by frying them for 2-3 minutes,Remove from the skillet and drain on paper towels,Spray a metal muffin pan with cooking spray,Bacon wrap the inside of the muffin cup to create a ring,EGG TIME,Carefully crack one egg into each bacon lined cup,Sprinkle each egg with thyme leaves parmesan cheese  kosher salt and pepper,Bake the egg cups for 10-15 minutes until the centers have set. You can adjust the cooking time based on how you prefer the consistency of your egg yolks,Carefully remove the bacon egg cups to a plate,Serve immediately", 
  user_id: 3, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/becks/eggscup.jpg')]
},
{
  title: "Bacon egg cups ", 
  description: "Yes son, your not dreaming", 
  difficulty: 2, 
  servings: 1, 
  preptime: 10, 
  cooktime: 7, 
  ingredients: "4 slices of bacon,4 egg,1 Tbsp grated parmesan cheese,Salt and black pepper,2 Tbsp chopped scallions", 
  directions:"Preheat oven to 375°F,Par cook the bacon slices by frying them for 2-3 minutes,Remove from the skillet and drain on paper towels,Spray a metal muffin pan with cooking spray,Bacon wrap the inside of the muffin cup to create a ring,EGG TIME,Carefully crack one egg into each bacon lined cup,Sprinkle each egg with thyme leaves parmesan cheese  kosher salt and pepper,Bake the egg cups for 10-15 minutes until the centers have set. You can adjust the cooking time based on how you prefer the consistency of your egg yolks,Carefully remove the bacon egg cups to a plate,Serve immediately", 
  user_id: 3, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/becks/eggscup.jpg')]
}

])


Comment.create!({
  title: "Love this recipe",
  content:"Very good tips and clear directions ! You rock. This is definitly in my top 3 recipes",
  user_id: 2,
  recipe_id: 1,
})

