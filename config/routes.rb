Rails.application.routes.draw do

  resources :styles
  resources :tags
  resources :comments
  resources :languages
  resources :elements
  resources :tag_tables
  resources :language_tables

  resources :tutos do
    collection { post :add_text, :add_code, :add_image}
  end

  devise_for :users
  resources :users, except:[:new, :create]

  resources :statics
  root to: "statics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
