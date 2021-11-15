class IngredientResource < ApplicationResource
  attribute :name, :string
  attribute :unit, :string_enum, allow: Ingredient.units.keys
  attribute :category, :string_enum, allow: Ingredient.categories.keys
end
