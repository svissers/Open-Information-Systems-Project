
-- Add some meal categories
INSERT INTO "MealCategories" VALUES (1, 'Breakfast', 'Meals for in the morning');
INSERT INTO "MealCategories" VALUES (2, 'Deserts', 'Yummie post-meal meals!');
INSERT INTO "MealCategories" VALUES (3, 'Dinner', 'For your elegant dinner parties');

-- Add some ingredient categories
INSERT INTO "IngredientCategories" VALUES (1,'Meat','Meat stuff');
INSERT INTO "IngredientCategories" VALUES (2,'Vegetables','Veggies and stuff');
INSERT INTO "IngredientCategories" VALUES (3,'Dairy','Milk and such');
INSERT INTO "IngredientCategories" VALUES (4,'Beer','Belgian speciality');
INSERT INTO "IngredientCategories" VALUES (5,'Grease','For greasing pans etc.');
INSERT INTO "IngredientCategories" VALUES (6,'Spices','To spice up your meal.');
INSERT INTO "IngredientCategories" VALUES (7,'Alcohol','Anything with alcohol');

-- Add some tools
INSERT INTO "Tools" VALUES (1, 'Oven', 'Your regular oven');
INSERT INTO "Tools" VALUES (2, 'Microwave', 'An average microwave');
INSERT INTO "Tools" VALUES (3, 'Pot', 'A metal pot');
INSERT INTO "Tools" VALUES (4, 'Furnace', 'Some kind of furnace, e.g. induction furnace');
INSERT INTO "Tools" VALUES (5, 'Skillet', 'A flat-bottomed pan');
INSERT INTO "Tools" VALUES (6, 'Blender', 'Will it blend? Yes!');
INSERT INTO "Tools" VALUES (7, 'Spatula', 'For flipping things over');
INSERT INTO "Tools" VALUES (8, 'Toothpicks', 'For holding things together');
INSERT INTO "Tools" VALUES (9, 'Fryer', 'To fry things in grease');

-- Add a dietary restriction
INSERT INTO "DietsAndAllergies" VALUES (1, 'Vegetarian', 'No meat!', 1);
INSERT INTO "DietsAndAllergies" VALUES (2, 'Lactose intolerance', 'No dairy!', 3);
INSERT INTO "DietsAndAllergies" VALUES (2, 'Teetotalism', 'No alcohol!', 7);

-- Add some ingredients
INSERT INTO "Ingredients" VALUES (1, null, 'Carrot', 2, 'kilogram', 10, 30);
INSERT INTO "Ingredients" VALUES (2, null, 'Egg', 1, 'unit', 50, 70);
INSERT INTO "Ingredients" VALUES (3, null, 'Milk', 50, 'cup', 34, 31);
INSERT INTO "Ingredients" VALUES (4, null, 'Salt', 50, 'teaspoon', 39, 34);
INSERT INTO "Ingredients" VALUES (5, null, 'Sugar', 50, 'teaspoon', 6, 48);
INSERT INTO "Ingredients" VALUES (6, null, 'Flour', 50, 'tablespoon', 7, 25);
INSERT INTO "Ingredients" VALUES (7, null, 'Cooking spray', 50, 'tablespoon', 10, 14);
INSERT INTO "Ingredients" VALUES (8, null, 'Butter', 50, 'tablespoon', 2, 20);
INSERT INTO "Ingredients" VALUES (9, null, 'Boneless chicken breast', 50, 'unit', 1, 7);
INSERT INTO "Ingredients" VALUES (10, null, 'Swiss cheese', 50, 'slice', 16, 37);
INSERT INTO "Ingredients" VALUES (11, null, 'Paprika', 50, 'teaspoon', 24, 44);
INSERT INTO "Ingredients" VALUES (12, null, 'Dry white wine', 50, 'cup', 4, 49);
INSERT INTO "Ingredients" VALUES (13, null, 'Chicken bouillon', 50, 'teaspoon', 9, 38);
INSERT INTO "Ingredients" VALUES (14, null, 'Cornstarch', 50, 'tablespoon', 26, 20);
INSERT INTO "Ingredients" VALUES (15, null, 'Heavy whipping cream', 50, 'tablespoon', 27, 20);
INSERT INTO "Ingredients" VALUES (16, null, 'Sliced mushrooms', 50, 'cup', 3, 27);
INSERT INTO "Ingredients" VALUES (17, null, 'Shallots', 50, 'unit', 9, 33);
INSERT INTO "Ingredients" VALUES (18, null, 'Cherry tomatoes', 50, 'cup', 16, 5);
INSERT INTO "Ingredients" VALUES (19, null, 'Zucchini', 50, 'unit', 46, 13);
INSERT INTO "Ingredients" VALUES (20, null, 'Chopped basil', 50, 'cup', 20, 40);
INSERT INTO "Ingredients" VALUES (21, null, 'Generic seasoning', 0, 'to taste', 0, 0);
INSERT INTO "Ingredients" VALUES (22, null, 'Ham', 50, 'slice', 21, 6);
INSERT INTO "Ingredients" VALUES (23, null, 'Olive oil', 50, 'tablespoon', 26, 40);
INSERT INTO "Ingredients" VALUES (24, null, 'Onions', 0.69, 'kilogram', 6, 4);
INSERT INTO "Ingredients" VALUES (25, null, 'Stewing beef', 6.95, 'kilogram', 15, 27);
INSERT INTO "Ingredients" VALUES (26, null, 'St-Bernardus Abt 12', 1.80, 'bottle', 3, 39);
INSERT INTO "Ingredients" VALUES (27, null, 'Laurel leaf', 1.85, 'bag', 11, 3);
INSERT INTO "Ingredients" VALUES (28, null, 'Liège syrup', 2.49, 'tablespoon', 29, 12);
INSERT INTO "Ingredients" VALUES (29, null, 'Slice of bread', 0.10, 'unit', 50, 50);
INSERT INTO "Ingredients" VALUES (30, null, 'Mustard', 0.45, 'tablespoon', 2, 36);
INSERT INTO "Ingredients" VALUES (31, null, 'French fries potatoes', 0.99, 'kilogram', 19, 7);
INSERT INTO "Ingredients" VALUES (32, null, 'Piedboeuf', 1.39, 'bottle', 36, 40);

-- Add the ingredients to the right category
-- Categories_id, Ingredients_id
-- Meat cat
INSERT INTO "Categories_has_Ingredients" VALUES (1, 9); -- boneless chicken breast 
INSERT INTO "Categories_has_Ingredients" VALUES (1, 22); -- ham 
INSERT INTO "Categories_has_Ingredients" VALUES (1, 25); -- stewing beef
-- Veggie cat
INSERT INTO "Categories_has_Ingredients" VALUES (2, 1); -- carrot 
INSERT INTO "Categories_has_Ingredients" VALUES (2, 11); -- paprika
INSERT INTO "Categories_has_Ingredients" VALUES (2, 16); -- mushroom
INSERT INTO "Categories_has_Ingredients" VALUES (2, 24); -- onion
-- Dairy cat
INSERT INTO "Categories_has_Ingredients" VALUES (3, 3); -- milk
INSERT INTO "Categories_has_Ingredients" VALUES (3, 8); -- butter
-- Beer cat
INSERT INTO "Categories_has_Ingredients" VALUES (4, 26); -- St bernardus
INSERT INTO "Categories_has_Ingredients" VALUES (4, 32); -- Piedboeuf

-- Grease cat
INSERT INTO "Categories_has_Ingredients" VALUES (5, 7); -- cooking spray 
INSERT INTO "Categories_has_Ingredients" VALUES (5, 8); -- butter
-- spices cat
INSERT INTO "Categories_has_Ingredients" VALUES (6, 4); -- Salt 
INSERT INTO "Categories_has_Ingredients" VALUES (6, 11); -- paprika
INSERT INTO "Categories_has_Ingredients" VALUES (6, 20); -- chopped basil  
INSERT INTO "Categories_has_Ingredients" VALUES (6, 27); -- laurel leaves
-- alcohol cat
INSERT INTO "Categories_has_Ingredients" VALUES (7, 26); -- St bernardus
INSERT INTO "Categories_has_Ingredients" VALUES (7, 12); -- dry white wine
-- INSERT INTO "Categories_has_Ingredients" VALUES (7, 32); -- Piedboeuf --> tafelbier, alcoholvrij ;)

-- Boiled egg recipe
INSERT INTO "Recipes" VALUES (1, 'Boiled egg', null, 1);
-- Amount for step 1
INSERT INTO "IngredientAmounts" VALUES (1, 1, 2, null);
-- Step 1
INSERT INTO "CookingSteps" VALUES (1, 1, 'Put the egg in a pot with water', 1, 3, 1);
-- Step 2
INSERT INTO "CookingSteps" VALUES (1, 2, 'Put the pot on the fire for 3 minutes', 3, 4, null);


-- Norwegian pancakes recipe (6 servings, 10 min prep, 10 min cooking)
INSERT INTO "Recipes" VALUES (2, 'Norwegian pancakes', null, 6);
INSERT INTO "IngredientAmounts" VALUES (2, 3, 2, null); -- 3 eggs
INSERT INTO "IngredientAmounts" VALUES (3, 1.5, 3, null); -- 1.5 cups milk
INSERT INTO "IngredientAmounts" VALUES (4, 0.25, 4, null); -- 1/4 teaspoon salt
INSERT INTO "IngredientAmounts" VALUES (5, 0.25, 5, null); -- 1 teaspoon sugar
INSERT INTO "IngredientAmounts" VALUES (6, 1, 6, null); -- 1 cup flour
INSERT INTO "IngredientAmounts" VALUES (7, 1, 7, null); -- cooking spray/butter (TODO: add subst here)
INSERT INTO "CookingSteps" VALUES (2, 1, 'Put 3 eggs in the blender.', 0, 6, 2);
INSERT INTO "CookingSteps" VALUES (2, 2, 'Add 1 1/2 cups milk.', 0, null, 3);
INSERT INTO "CookingSteps" VALUES (2, 3, 'Add 1/4 teaspoon salt.', 0, null, 4);
INSERT INTO "CookingSteps" VALUES (2, 4, 'Add 1 teaspoon of sugar.', 0, null, 5);
INSERT INTO "CookingSteps" VALUES (2, 5, 'Add 1 cup of flour.', 0, null, 6);
INSERT INTO "CookingSteps" VALUES (2, 6, 'Blend until smooth.', 5, 6, null);
INSERT INTO "CookingSteps" VALUES (2, 8, 'Take out a skillet.', 0, 5, null);
INSERT INTO "CookingSteps" VALUES (2, 9, 'Heat the skillet over medium-high heat and coat with cooking spray or butter.', 1, 4, 7);
INSERT INTO "CookingSteps" VALUES (2, 10, 'Scoop about 1/4 cup of batter into the skillet, and tilt the pan to coat the bottom. Cook until the top looks dry, about 30 seconds.', 3, null, null);
INSERT INTO "CookingSteps" VALUES (2, 11, 'Carefully slide a spatula under the pancake and flip.', 3, null, null);
INSERT INTO "CookingSteps" VALUES (2, 12, 'Cook for a few seconds on the other side, just until browned.', 3, null, null);
INSERT INTO "CookingSteps" VALUES (2, 13, 'Remove to a plate, and repeat with remaining batter.', 1, null, null);

-- Chicken Cordon Bleu
INSERT INTO "Recipes" VALUES (3, 'Chicken Cordon Bleu', null, 6);
INSERT INTO "IngredientAmounts" VALUES (8, 3, 9, null); -- 3 chicken breasts
INSERT INTO "IngredientAmounts" VALUES (9, 6, 10, null); -- 6 slices swiss cheese
INSERT INTO "IngredientAmounts" VALUES (10, 6, 22, null); -- 6 slices of ham
INSERT INTO "IngredientAmounts" VALUES (11, 3, 6, null); -- 3 tablespoons flour
INSERT INTO "IngredientAmounts" VALUES (12, 1, 11, null); -- 1 teaspoon paprika
INSERT INTO "IngredientAmounts" VALUES (13, 6, 8, 5); -- 6 tablespoons butter
INSERT INTO "IngredientAmounts" VALUES (14, 0.5, 12, null); -- 1/2 cup dry white wine
INSERT INTO "IngredientAmounts" VALUES (15, 1, 13, null); -- 1 teaspoon chicken bouillon
INSERT INTO "IngredientAmounts" VALUES (16, 1, 14, null); -- 1 tablespoon cornstarch
INSERT INTO "IngredientAmounts" VALUES (17, 1, 15, null); -- 1 cup heavy whipping cream
INSERT INTO "CookingSteps" VALUES (3, 1, 'Pound chicken breasts if they are too thick.', 1, null, 8);
INSERT INTO "CookingSteps" VALUES (3, 2, 'Place a cheese on each of 6 breasts within 1/2 inch of the edges.', 1, null, 9);
INSERT INTO "CookingSteps" VALUES (3, 3, 'Place a ham slice on the cheese.', 1, null, 10);
INSERT INTO "CookingSteps" VALUES (3, 4, 'Fold the edges of the chicken over the filling, and secure with toothpicks.', 1, 8, null);
INSERT INTO "CookingSteps" VALUES (3, 5, 'Put 3 tablespoons of all-purpose flour in a small bowl.', 1, null, 11);
INSERT INTO "CookingSteps" VALUES (3, 6, 'Put 1 teaspoon of paprika in the bowl.', 1, null, 12);
INSERT INTO "CookingSteps" VALUES (3, 7, 'Coat the bowl with the chicken pieces.', 1, null, null);
INSERT INTO "CookingSteps" VALUES (3, 8, 'Take out a skillet.', 0, 5, null);
INSERT INTO "CookingSteps" VALUES (3, 9, 'Heat 6 tablespoons of butter in a large skillet over medium-high heat.', 1, 4, 13);
INSERT INTO "CookingSteps" VALUES (3, 10, 'Cook the chicken until browned on all sides.', 1, 4, null);
INSERT INTO "CookingSteps" VALUES (3, 11, 'Add 1/2 cup of dry white wine.', 1, null, 14);
INSERT INTO "CookingSteps" VALUES (3, 12, 'Add 1 teaspoon of chicken bouillon.', 1, null, 15);
INSERT INTO "CookingSteps" VALUES (3, 13, 'Reduce heat to low, cover, and simmer for 30 minutes, until chicken is no longer pink and juices run clear.', 1, 4, null);
INSERT INTO "CookingSteps" VALUES (3, 14, 'Remove the toothpicks, and transfer the breasts to a warm platter.', 1, null, null);
INSERT INTO "CookingSteps" VALUES (3, 15, 'Put 1 tablespoon cornstarch in a small bowl.', 1, null, 16);
INSERT INTO "CookingSteps" VALUES (3, 16, 'Blend 1 cup heavy whipping cream in the bowl, whisk slowly into the skillet.', 1, null, 17);
INSERT INTO "CookingSteps" VALUES (3, 17, 'Cook, stirring until thickened, and pour over the chicken. Serve warm.', 1, 4, null);

-- Summer Bounty Pasta (3 servings, 25 min)
INSERT INTO "Recipes" VALUES (4, 'Summer Bounty Pasta', null, 3);
INSERT INTO "IngredientAmounts" VALUES (18, 1, 8, 5); -- 1 tblspoon butter
INSERT INTO "IngredientAmounts" VALUES (19, 1, 16, null); -- 1 cup sliced mushrooms
INSERT INTO "IngredientAmounts" VALUES (20, 2, 17, null); -- 2 shallots
INSERT INTO "IngredientAmounts" VALUES (21, 1, 18, null); -- 1 cup cherry tomatoes
INSERT INTO "IngredientAmounts" VALUES (22, 1.5, 15, null); -- 1.5 cups heavy whipping cream
INSERT INTO "IngredientAmounts" VALUES (23, 2, 19, null); -- 2 zucchini
INSERT INTO "IngredientAmounts" VALUES (24, 1, 20, null); -- 1 cup basil
INSERT INTO "IngredientAmounts" VALUES (25, 1, 21, null); -- seasoning
INSERT INTO "IngredientAmounts" VALUES (26, 1, 23, null); -- 1 tblspoon olive oil
INSERT INTO "CookingSteps" VALUES (4, 1, 'Put 1 tablespoon of butter in a deep large skillet.', 1, 5, 18);
INSERT INTO "CookingSteps" VALUES (4, 2, 'Add 1 tablespoon of olive oil, cook over medium heat.', 0, null, 26);
INSERT INTO "CookingSteps" VALUES (4, 3, 'Add 1 cup of sliced mushrooms.', 0, null, 19);
INSERT INTO "CookingSteps" VALUES (4, 4, 'Add 2 chopped shallots, cook until slightly softened, about 5 minutes.', 5, 4, 20);
INSERT INTO "CookingSteps" VALUES (4, 5, 'Add 1 cup of halved cherry tomatoes and cook until tomatoes begin to cook down, about 5 minutes.', 5, 4, 21);
INSERT INTO "CookingSteps" VALUES (4, 6, 'Reduce heat to medium-low and add 1 1/2 cups heavy whipping cream to mushroom mixture.', 1, 4, 22);
INSERT INTO "CookingSteps" VALUES (4, 7, 'Add 2 zucchini, cut into noodle-shaped strands.', 0, null, 23);
INSERT INTO "CookingSteps" VALUES (4, 8, 'Add 1 cup of chopped fresh basil.', 0, null, 24);
INSERT INTO "CookingSteps" VALUES (4, 9, 'Cook and stir until heated through and zucchini are slightly tender, about 5 minutes. ', 5, 4, null);
INSERT INTO "CookingSteps" VALUES (4, 10, 'Season mixture with salt and pepper.', 1, null, 25);

-- Beef stew with french fries a la Meus
INSERT INTO "Recipes" VALUES (5, 'Beef stew with french fries', null, 4);
INSERT INTO "IngredientAmounts" VALUES (27, 0.2, 24, null); -- 200g of Onions ~ 2 big ones
INSERT INTO "IngredientAmounts" VALUES (28, 1, 25, null); -- 1kg of beef
INSERT INTO "IngredientAmounts" VALUES (29, 1.5, 26, 4); -- 1.5 bottle of beer TODO beer category for alt ingredients
INSERT INTO "IngredientAmounts" VALUES (30, 0.5, 27, null); -- half a bag of laurel leaves 
INSERT INTO "IngredientAmounts" VALUES (31, 2, 28, null); -- 2 TS of syrup
INSERT INTO "IngredientAmounts" VALUES (32, 2, 29, null); -- 2 slices of bread 
INSERT INTO "IngredientAmounts" VALUES (33, 2, 30, null); -- 2 TS of mustard
INSERT INTO "IngredientAmounts" VALUES (34, 1, 31, null); -- 1 kg of potatoes
-- recipe, order, step, time, tools, ingredients
INSERT INTO "CookingSteps" VALUES (5, 1, 'Chop up the onions.', 5, null, 27);
INSERT INTO "CookingSteps" VALUES (5, 2, 'Put 1 tablespoon of butter the skillet.', 1, 5, 18);
INSERT INTO "CookingSteps" VALUES (5, 3, 'Sear up the pieces of meat in the skillet.', 5, 5, 28);
INSERT INTO "CookingSteps" VALUES (5, 4, 'Put 1 tablespoon of butter the pot.', 1, 3, 18);
INSERT INTO "CookingSteps" VALUES (5, 5, 'Cook the chopped up onions on a low heat.', 5, 4, null);
INSERT INTO "CookingSteps" VALUES (5, 6, 'Put the seared up pieces of meat in the pot with the onions.', 1, null, null);
INSERT INTO "CookingSteps" VALUES (5, 7, 'Warm up the beer in the skillet, then add it to the pot.', 5, null, 29);
INSERT INTO "CookingSteps" VALUES (5, 8, 'Add the Liège syrup to the pot.', 1, null, 31);
INSERT INTO "CookingSteps" VALUES (5, 9, 'Add the laurel leaves to the pot.', 1, null, 30);
INSERT INTO "CookingSteps" VALUES (5, 10, 'Take the slices of bread.', 1, null, 32);
INSERT INTO "CookingSteps" VALUES (5, 11, 'Put the mustard on the slices of bread and put them in the pot, mustard side down.', 1, null, 33);
INSERT INTO "CookingSteps" VALUES (5, 12, 'Leave the pot to simmer on the stove for two to three hours.', 180, 4, null);
INSERT INTO "CookingSteps" VALUES (5, 13, 'Peel and cut the potatoes in the correct form for the fries.', 10, null, 34);
INSERT INTO "CookingSteps" VALUES (5, 14, 'Fry the fries a first time on a heat of 140 degrees celsius.', 5, 9, null);
INSERT INTO "CookingSteps" VALUES (5, 15, 'Let the fries cool down.', 30, null, null);
INSERT INTO "CookingSteps" VALUES (5, 16, 'Fry the fries for a second time at 180 degrees Celsius untill they are goldbrown.', 1, 9, null);

-- Populate recipe-mealcat relation
-- recipe_id, mealcat_id
INSERT INTO "Recipes_has_MealCategories" VALUES (1, 1); -- egg
INSERT INTO "Recipes_has_MealCategories" VALUES (2, 2); -- pancakes
INSERT INTO "Recipes_has_MealCategories" VALUES (3, 3); -- cordon bleu
INSERT INTO "Recipes_has_MealCategories" VALUES (4, 3); -- bounty pasta
INSERT INTO "Recipes_has_MealCategories" VALUES (5, 3); -- Beef stew, dinner
;

