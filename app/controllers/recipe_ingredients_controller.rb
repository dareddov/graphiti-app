class RecipeIngredientsController < ApplicationController
  def index
    recipe_ingredients = RecipeIngredientResource.all(params)
    respond_with(recipe_ingredients)
  end
end
