FactoryBot.define do
  factory :ingredient do
    name { "MyString" }
    unit { Ingredient.units.keys.sample }
    category { Ingredient.categories.keys.sample }
  end
end
