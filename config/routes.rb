RecipeJunction::Application.routes.draw do
  resources :recipes

  resources :authors

  root :to => 'recipes#index'
end
