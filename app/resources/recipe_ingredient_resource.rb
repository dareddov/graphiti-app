class RecipeIngredientResource < ApplicationResource
  attribute :ingredient_id, :integer
  attribute :recipe_id, :integer
  attribute :quantity, :float

  belongs_to :recipe
  belongs_to :ingredient
end
