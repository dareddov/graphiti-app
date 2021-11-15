class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.integer :preparation_time
      t.integer :difficulty

      t.timestamps
    end
  end
end
