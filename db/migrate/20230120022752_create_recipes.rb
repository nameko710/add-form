class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :catchcopy
      t.string :no_of_dish
      t.string :image

      t.timestamps
    end
  end
end
