class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  
  def new
    @form = Form::RecipeCollection.new
  end

  def create
    @form = Form::RecipeCollection.new(recipe_collection_params)
    if @form.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def recipe_collection_params
    params.require(:form_recipe_collection)
    .permit(recipes_attributes: [:title,:image]).merge(user_id: current_user.id)
  end
end
