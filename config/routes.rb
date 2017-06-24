Rails.application.routes.draw do


  root to: 'pages#home'

  get '/kitchens' => 'pages#kitchens'

  get '/bathrooms' => 'pages#bathrooms'

  get '/new_builds' => 'pages#new_builds'

  get '/extensions' => 'pages#extensions'

  get '/externals' => 'pages#externals'

  get '/contact_us' => 'pages#contact_us'

  get '/all_services' => 'pages#all_services'



  match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]
end
