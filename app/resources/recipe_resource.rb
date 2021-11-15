class RecipeResource < ApplicationResource
  self.autolink = false

  attribute :name, :string
  attribute :description, :string
  attribute :preparation_time, :integer
  attribute :difficulty, :integer

end
