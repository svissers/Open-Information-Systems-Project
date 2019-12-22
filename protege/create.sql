
-- -----------------------------------------------------
-- Schema lastrecipe
-- -----------------------------------------------------


DROP TABLE IF EXISTS "Recipes_has_MealCategories" ;
DROP TABLE IF EXISTS "MealCategories" ;
DROP TABLE IF EXISTS "Categories_has_Ingredients" ;
DROP TABLE IF EXISTS "DietsAndAllergies" ;
DROP TABLE IF EXISTS "CookingSteps" ;
DROP TABLE IF EXISTS "Recipes" ;
DROP TABLE IF EXISTS "IngredientAmounts" ;
DROP TABLE IF EXISTS "IngredientCategories" ;
DROP TABLE IF EXISTS "Ingredients" ;
DROP TABLE IF EXISTS "Tools" ;

-- -----------------------------------------------------
-- Table "Tools"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "Tools" (
  "id" INTEGER PRIMARY KEY AUTO_INCREMENT,
  "name" VARCHAR(45) NOT NULL,
  "description" VARCHAR(255) NOT NULL)
;


-- -----------------------------------------------------
-- Table "Ingredients"
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS "Ingredients" (
  "id" INTEGER NOT NULL,
  "image" VARCHAR(255) NULL,
  "name" VARCHAR(45) NOT NULL,
  "price" FLOAT UNSIGNED NOT NULL,
  "unit" VARCHAR(45) NOT NULL,
  "proteins" INTEGER UNSIGNED NOT NULL,
  "calories" INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY ("id"))
;


-- -----------------------------------------------------
-- Table "IngredientCategories"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "IngredientCategories" (
  "id" INTEGER NOT NULL,
  "name" VARCHAR(45) NOT NULL,
  "description" VARCHAR(255) NULL,
  PRIMARY KEY ("id"))
;


-- -----------------------------------------------------
-- Table "IngredientAmounts"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "IngredientAmounts" (
  "id" INTEGER NOT NULL,
  "amount" FLOAT UNSIGNED NOT NULL,
  "ingredientId" INTEGER NULL,
  "substitutions" INTEGER NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "fk_IngredientAmounts_Ingredients1"
    FOREIGN KEY ("ingredientId")
    REFERENCES "Ingredients" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_IngredientAmounts_Categories1"
    FOREIGN KEY ("substitutions")
    REFERENCES "IngredientCategories" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table "Recipes"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "Recipes" (
  "id" INTEGER NOT NULL,
  "name" VARCHAR(45) NOT NULL,
  "image" VARCHAR(255) NULL,
  "servings" INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY ("id"))
;


-- -----------------------------------------------------
-- Table "CookingSteps"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "CookingSteps" (
  "recipeId" INTEGER NOT NULL,
  "order" INTEGER NOT NULL,
  "instructions" LONGTEXT NOT NULL,
  "time" INTEGER UNSIGNED NOT NULL,
  "tools" INTEGER NULL,
  "ingredients" INTEGER NULL,
  PRIMARY KEY ("recipeId", "order"),
  CONSTRAINT "fk_CookingSteps_Tools"
    FOREIGN KEY ("tools")
    REFERENCES "Tools" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_CookingSteps_IngredientAmounts1"
    FOREIGN KEY ("ingredients")
    REFERENCES "IngredientAmounts" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_CookingSteps_Recipes1"
    FOREIGN KEY ("recipeId")
    REFERENCES "Recipes" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table "DietsAndAllergies"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "DietsAndAllergies" (
  "id" INTEGER NOT NULL,
  "name" VARCHAR(45) NULL,
  "description" VARCHAR(45) NULL,
  "categories" INTEGER NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "fk_DietsAndAllergies_Categories1"
    FOREIGN KEY ("categories")
    REFERENCES "IngredientCategories" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table "Categories_has_Ingredients"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "Categories_has_Ingredients" (
  "Categories_id" INTEGER NOT NULL,
  "Ingredients_id" INTEGER NOT NULL,
  PRIMARY KEY ("Categories_id", "Ingredients_id"),
  CONSTRAINT "fk_Categories_has_Ingredients_Categories1"
    FOREIGN KEY ("Categories_id")
    REFERENCES "IngredientCategories" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_Categories_has_Ingredients_Ingredients1"
    FOREIGN KEY ("Ingredients_id")
    REFERENCES "Ingredients" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table "MealCategories"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "MealCategories" (
  "id" INTEGER NOT NULL,
  "name" VARCHAR(45) NOT NULL,
  "description" VARCHAR(255) NULL,
  PRIMARY KEY ("id"))
;


-- -----------------------------------------------------
-- Table "Recipes_has_MealCategories"
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS "Recipes_has_MealCategories" (
  "Recipes_id" INTEGER NOT NULL,
  "MealCategories_id" INTEGER NOT NULL,
  PRIMARY KEY ("Recipes_id", "MealCategories_id"),
  CONSTRAINT "fk_Recipes_has_MealCategories_Recipes1"
    FOREIGN KEY ("Recipes_id")
    REFERENCES "Recipes" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_Recipes_has_MealCategories_MealCategories1"
    FOREIGN KEY ("MealCategories_id")
    REFERENCES "MealCategories" ("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;
