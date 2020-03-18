Rails.application.routes.draw do
  #get 'site_maps/index'
  resources :statics
  root to: "statics#index"

  devise_for :users
  resources :users, except:[:new, :create]

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

  get '/sitemap' => 'site_maps#index'
  #resources :styles

end
