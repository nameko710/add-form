class RemoveCatchcopyFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :catchcopy, :text
  end
end
