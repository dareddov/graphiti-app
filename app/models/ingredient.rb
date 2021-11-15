class Ingredient < ApplicationRecord
  enum unit: %w[g dag kg]
  enum category: %w[
    delicacies chocolate mushrooms eggs groats pasta
    meat dairy fruit seafood plants fish rice vegetables other
  ]
  validates :name, presence: true
end
