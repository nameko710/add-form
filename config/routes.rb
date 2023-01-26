Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'
  resources :recipes, only: [:new, :create, :index]
  resources :recipes do
    collection do
      get 'recipe_edit'
    end
  end
end
