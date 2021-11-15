class IngredientResource < ApplicationResource
  attribute :name, :string
  attribute :unit, :string_enum, allow: Ingredient.units.keys
  attribute :category, :string_enum, allow: Ingredient.categories.keys

  filter :unit, :string_enum, allow: Ingredient.units.keys
  filter :category, :string_enum, allow: Ingredient.categories.keys
end
