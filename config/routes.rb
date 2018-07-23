Rails.application.routes.draw do

  get '/', to: 'home#index', as: 'home'


  get '/heros/:id/edit', to: 'heros#edit', as: 'edit_hero'
  get '/heros/new', to: 'heros#new', as: 'new_hero'
  get '/heros/:id', to: 'heros#show', as: 'hero'
  get '/heros', to: 'heros#index', as: 'heros'

  patch '/heros/:id', to: 'heros#update'
  post '/heros', to: 'heros#create'

  delete '/heros/:id', to: 'heros#delete', as: 'delete_hero'

  resources :items
  resources :heros do
    resources :items
  end
end
