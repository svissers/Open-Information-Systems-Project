[QueryGroup="Fetch per class"] @collection [[
[QueryItem="Ingredient"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :Ingredient.
	?id :name ?name.
	?id :pricePerUnit ?price.
	?id :unit ?unit.
	?id :proteins ?proteins.
	?id :calories ?calories.
}

[QueryItem="MealCategory"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :MealCategory.
	?id :name ?name.
	?id :description ?description.
}

[QueryItem="IngredientCategory"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :IngredientCategory.
	?id a ?class.
	?id :name ?name.
	?id :description ?description.
}

[QueryItem="CookingStep"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT ?id ?class ?order ?time ?tool
WHERE {
	?id a :CookingStep.
	?id a ?class.
	?id :order ?order.
	?id :timeRequired ?time.
	OPTIONAL {
		?id :UsesTool ?tool.
	}
	OPTIONAL { ?id :amount ?amount }
	FILTER ( !bound(?amount) )
}

[QueryItem="CookingStepWithIngredient"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :CookingStepWithIngredient.
	?id a ?class.
	?id :order ?order.
	?id :timeRequired ?time.
	?id :amount ?amount.
	?id :HasIngredient ?ingredient.
	OPTIONAL {
		?id :UsesTool ?tool.
	}
}

[QueryItem="Recipe"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :Recipe.
	?id :name ?name.
	?id :servings ?servings.
}

[QueryItem="Restriction"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT ?id ?name ?description ?category
WHERE {
	?id a :Restriction.
	?id :name ?name.
	?id :description ?description.
	?id :Forbids ?cat_id.
	?cat_id :name ?category
}
]]

[QueryGroup="Other queries"] @collection [[
[QueryItem="Get cooking steps"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :Recipe.
	?id :name ?name.
	?id :ConsistsOf ?step.
	?step :description ?instructions.
	OPTIONAL {
		?step :HasIngredient ?ingredient.
	}
}

[QueryItem="Get Recipe categories"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :Recipe.
	?id :name ?name.
	?id :InCategory ?category.
}

[QueryItem="Get Ingredient categories"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :Ingredient.
	?id :name ?name.
	?id :BelongsTo ?categorie.
}

[QueryItem="vegetarian"]
PREFIX : <http://example.com/thelastrecipe/>

SELECT *
WHERE {
	?id a :Recipe.
	?id :name ?name.
	?id :servings ?servings.
	?id :isVegetarian ?isVegetarian.
}
]]
