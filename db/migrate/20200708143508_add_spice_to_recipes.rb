class AddSpiceToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :spice, :text
  end
end
