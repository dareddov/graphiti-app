class Ingredient < ApplicationRecord
  enum unit: %w[g dag kg]
  enum category: %w[
    delicacies chocolate mushrooms eggs groats pasta
    meat dairy fruit seafood plants fish rice vegetables other
  ]
  validates :name, presence: true

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
