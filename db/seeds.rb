# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#

[
  ['makaron świderki', 'pasta'],
  ['filet z kurczaka', 'meat'],
  ['cebula', 'vegetables'],
  ['papryka', 'vegetables'],
  ['pomidor', 'vegetables'],
  ['przecier pomidorowy', 'other'],
  ['ząbek czosnku', 'vegetables'],
  ['mozarella light', 'dairy'],
  ['olej', 'other'],
  ['woda', 'other'],
  ['mąka', 'other'],
  ['jajka', 'dairy'],
  ['śmietana', 'dairy'],
  ['wołowina', 'meat'],
  ['makaron spaghetti', 'pasta'],
  ['krewetki królewskie', 'seafood'],
  ['pomarańcza', 'fruit'],
  ['czekolada Milka', 'chocolate'],
  ['kakao Nesquik', 'chocolate'],
  ['rodzynki', 'delicacies'],
  ['mak', 'delicacies'],
  ['borowik', 'mushrooms'],
  ['kurka', 'mushrooms'],
  ['jajko na twardo', 'eggs'],
  ['kasza jaglana', 'groats'],
  ['kasza kuskus', 'groats'],
  ['szczypiorek', 'plants'],
  ['mięta', 'plants'],
  ['ryż jaśminowy', 'rice'],
  ['ryż brązowy', 'rice']
].each do |name, category|
  Ingredient.create(name: name, category: category, unit: %w[g dag kg].sample)
end
