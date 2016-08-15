
# This is to link the carrierwave/imageuploader images to the seed file 
# recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png') 


["comments","recipes","users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

# USERS

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
  description: "I cook for code tips. I post recipes on this website because it's the best website" ,
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
  description: "I was supposed to go to mars because I used to hate society. But now that this website exist, my life changed completly",
  email: "Shu-master@chia.com",
  password: "password",
  password_confirmation: "password"
},
{
  username: "Cameron",
  first_name: "Cameron",
  last_name: "Perrin",
  description: "I love this website because they are using real food in their recipes" ,
  email: "cameron@americaFuckYeah.com",
  password: "password",
  password_confirmation: "password"
}
])


# RECIPES

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
  title: "Ramen noodle", 
  description: "Oh my goooooooooooooodness its good", 
  difficulty: 1, 
  servings: 1, 
  preptime: 15, 
  cooktime: 22, 
  ingredients: "3 Chicken Breasts,Udon / Ramen Noodles,3 Pak Choi,3 Gloves of Garlic,1 Whole Red Chili - deseaded and Chopped,Bunch of Spring Onions,600ml Chicken Stock", 
  directions:"Cut the chicken into strips and pan fry in a oil with a little salt and pepper untill brown, Take the chicken out of the pan leaving the juice behind,Cut the Pak Choi bunches length ways to create long strips. Mince the garlic (or finely chop), Finely slice and de-seed a Red Chilli,Fry the Pak Choi/Garlic and Chilli over a low heat untill the Pak Choi starts to wilt,Tip : Be careful not to burn the Garlic,Once cooked add the chicken and add the 600ml of Chicken stock. In a seperate pan cook the Udon / Ramen noodles in boiling water for approx 4 minutes (untill soft),
Drain the noodles and divide into the bowls. Use a slotted spoon to place the Chicken, Pak Choi over the noodle and then ladle the broth over the top. Serve with finely chopped spring onions.", 
  user_id: 2, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/jemjem/ramen.jpg')]
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
  pictures: [File.open(Rails.root.join + 'public/recipes_img/quesadilla/quesadilla2.JPG'),File.open(Rails.root.join + 'public/recipes_img/quesadilla/quesadilla3.JPG')]
},
{
  title: "Recipe with no picture because i'm evil", 
  description: "Terribly good though", 
  difficulty: 2, 
  servings: 4, 
  preptime: 10, 
  cooktime: 20, 
  ingredients: "Hello,is,it,me,you're,looking,for?", 
  directions:"No..", 
  user_id: 2, 

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
  title: "Eggs on toast with avocado and salmon", 
  description: "These are marvelous, a perfect kick to start the day", 
  difficulty: 2, 
  servings: 1, 
  preptime: 5, 
  cooktime: 10, 
  ingredients: "2 slice of salmon,2 eggs (the freshest the best),1 avocado,2 toasts", 
  directions:"Get yourself a wide, casserole-type pan and fill it with boiling water from the kettle. Bring it to a light simmer over a medium heat, add a pinch of sea salt,Crack one of your eggs into a cup and gently pour it into the water in one fluid movement. Repeat with the rest of the eggs. You’ll see them begin to cook immediately – don’t worry if the edges look a little scruffy. Depending on your pan, a really soft poached egg should take around 2 minutes and a soft to firm one will need 4 minutes (it depends on the size of the eggs and whether you’re using them straight from the fridge). To check whether they’re done, remove one carefully from the pan with a slotted spoon and give it a gentle push with a teaspoon. If it feels too soft (use your instincts), put it back and give the eggs a minute or two more in the water to firm up,When they’re ready, remove them to some kitchen paper to dry off and serve with buttered toast and a sprinkle of sea salt and freshly ground black pepper", 
  user_id: 5, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/callum/callumsrecipe.jpg')]
},
{
  title: "Pastas on fire", 
  description: "Because i love cooking", 
  difficulty: 5, 
  servings: 1, 
  preptime: 1, 
  cooktime: 3, 
  ingredients: "300 gr of spaghetti,Adventurer skill,1 lighter", 
  directions:"Put the pasta in boiling water,
              Light the top of the pasta on fire because why not ?,
              Enjoy a cool picture",
  user_id: 6, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/shumaster/shumasterrecipe.jpg'),File.open(Rails.root.join + 'public/recipes_img/shumaster/lighter.jpg')]
},
{
  title: "Raspberry and almond tart", 
  description: "I usualy do this one when i need a library snack", 
  difficulty: 5, 
  servings: 8, 
  preptime: 60, 
  cooktime: 60, 
  ingredients: "FOR THE PASTRY,250g plain flour, plus extra for dusting,150g fridge-cold unsalted butter,1 tbsp caster sugar,1 medium free-range egg,1 tbsp cold water,FOR THE FILLING,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  directions:"For the pastry pulse the flour butter and sugar in a food processor until the mixture resembles breadcrumbs,Mix together the beaten egg and water. With the motor still running gradually add the egg and water mixture to the bowl of the food processor a little at a time. Until the mixture comes together as a dough,Roll out the pastry onto a lightly floured work surface to form a circle about 30cm in diameter. Carefully line a 25cm tart tin with the rolled pastry then lightly prick the base with a fork,Transfer the tart case to a baking tray and chill in the fridge for 30 minutes. Preheat the oven to 200C/400F/Gas 6,When the pastry has chilled line the tart case with greaseproof paper and fill it with baking beans. Bake in the oven for 20 minutes then remove the paper and beans. Return the tart case to the oven for a further 4-5 minutes or until the pastry is pale golden-brown. Remove the tart case from the oven and set aside. Reduce the oven temperature to 170C/325F/Gas 3,For the filling in a food processor blend together the butter and sugar until pale and fluffy. Add the ground almonds / flour / salt/ baking powder / eggs and vanilla extract and blend again until well combined,Spread the raspberry jam over the base of the pastry case, then spoon over the almond filling mixture, starting at the edges of the tart and working towards the centre,Arrange seven of the peach halves cut-sides down in a circle at the edge of the tart pressing each gently into the filling mixture. Press the remaining peach half into the centre of the tart. Push the raspberries into the filling mixture,Bake the tart in the oven for 25-30 minutes or until the filling mixture has set slightly and is pale golden-brown,Remove the tart from the oven sprinkle all over with the flaked almonds then return to the oven and continue to bake for a further 20-25 minutes or until the peaches are tender and the filling has risen and is golden-brown,Set aside for 15 minutes to cool slightly then lift the tart from the tin", 
  user_id: 4, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/kaitlyn/kaitlynrecipe.jpg'),File.open(Rails.root.join + 'public/recipes_img/kaitlyn/kaitlynrecipe.jpg')]
},
{
  title: "Sesame seeds chicken and veggies", 
  description: "Sesaaaaaaame maaaaaaaaan", 
  difficulty: 2, 
  servings: 2, 
  preptime: 10, 
  cooktime: 15, 
  ingredients: "4 chickens,Salt and black pepper,2 Tbsp chopped scallions, Green pepper", 
  directions:"CHICKEN PART, put some oil in the pan,Chop the chicken,1 tbsp cold water,FOR THE VEGGIES,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/chicken/IMG_8943.jpg')]

},
{
  title: "Eggs, tomatoes and mushrooms on toast", 
  description: "", 
  difficulty: 2, 
  servings: 3, 
  preptime: 20, 
  cooktime: 10, 
  ingredients: "4 chickens,Salt and black pepper,2 Tbsp chopped scallions, Green pepper", 
  directions:"CHICKEN PART, put some oil in the pan,Chop the chicken,1 tbsp cold water,FOR THE VEGGIES,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/eggs/egg1.jpg')]

},
{
  title: "BBQ fish", 
  description: "Tasty", 
  difficulty: 1, 
  servings: 3, 
  preptime: 10, 
  cooktime: 15, 
  ingredients: "4 chickens,Salt and black pepper,2 Tbsp chopped scallions, Green pepper", 
  directions:"CHICKEN PART, put some oil in the pan,Chop the chicken,1 tbsp cold water,FOR THE VEGGIES,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/bbq/bbq_fish1.JPG')]

},
{
  title: "Morning eggs", 
  description: "Good morning kick", 
  difficulty: 1, 
  servings: 3, 
  preptime: 10, 
  cooktime: 15, 
  ingredients: "4 chickens,Salt and black pepper,2 Tbsp chopped scallions, Green pepper", 
  directions:"CHICKEN PART, put some oil in the pan,Chop the chicken,1 tbsp cold water,FOR THE VEGGIES,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/eggs_toast/eggs_onions_pepper_mush_tom2.JPG')]

},
{
  title: "Eggs with chicken", 
  description: "Because chicken is alwaaaaaays good", 
  difficulty: 1, 
  servings: 3, 
  preptime: 10, 
  cooktime: 15, 
  ingredients: "4 chickens,Salt and black pepper,2 Tbsp chopped scallions, Green pepper", 
  directions:"CHICKEN PART, put some oil in the pan,Chop the chicken,1 tbsp cold water,FOR THE VEGGIES,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/eggs_toast/eggs_av_pep_chicck.JPG')]

},
{
  title: "Chicken, rice and veggies", 
  description: "Inspired by a chinese restaurant i want to with Jason and Edward", 
  difficulty: 2, 
  servings: 3, 
  preptime: 20, 
  cooktime: 10, 
  ingredients: "4 chickens,Salt and black pepper,2 Tbsp chopped scallions, Green pepper", 
  directions:"CHICKEN PART, put some oil in the pan,Chop the chicken,1 tbsp cold water,FOR THE VEGGIES,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  user_id: 1, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/chikenandrice/chickenandrice1.jpg'),File.open(Rails.root.join + 'public/recipes_img/chikenandrice/chickenandrice2.jpg'),File.open(Rails.root.join + 'public/recipes_img/chikenandrice/chickenandrice3.jpg')]
},
{
  title: "Cheesy chorizo on toast", 
  description: "A taste of America", 
  difficulty: 2, 
  servings: 1, 
  preptime: 5, 
  cooktime: 10, 
  ingredients: "4 chickens,Salt and black pepper,2 Tbsp chopped scallions, Green pepper", 
  directions:"CHICKEN PART, put some oil in the pan,Chop the chicken,1 tbsp cold water,FOR THE VEGGIES,175g unsalted butter (softened),175g golden caster sugar,125g ground almonds,65g plain flour,½ tsp sea salt flakes,½ tsp baking powder,2 medium free-range eggs (beaten),½ tsp vanilla extract,5 tbsp good-quality raspberry jam,4 firm ripe peaches cut in half (stones removed (do i really need to specify that ?!),couple of fresh raspberries,couple of flaked almonds", 
  user_id: 7, 
  pictures: [File.open(Rails.root.join + 'public/recipes_img/cameron/peppeontoast.jpeg')]
}

])




# COMMENTS


Comment.create!([{
  title: "Love this recipe",
  content:"Very good tips and clear directions ! You rock. This is definitly in my top 3 recipes",
  user_id: 2,
  recipe_id: 1,
},
{
  title: "Love this recipe",
  content:"Niceeeeee !",
  user_id: 1,
  recipe_id: 3,
},
{
  title: "Love this recipe",
  content:"Very tastful",
  user_id: 2,
  recipe_id: 4,
},
{
  title: "Love this recipe",
  content:"I've made this one in GA when it was closed, loved it !",
  user_id: 5,
  recipe_id: 2,
}])

