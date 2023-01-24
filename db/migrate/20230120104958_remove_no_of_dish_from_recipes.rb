class RemoveNoOfDishFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :no_of_dish, :string
  end
end
