Rails.application.routes.draw do
  resources :products
  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new'
  post '/products', to: 'products#create'

  # get '/products/:id', to 'products#show'#, as 'product' Para mostrar un producto, el alias es product
  get '/products/:id/edit', to: 'products#edit' #, as 'edit_product'

  patch '/product/:id', to: 'products#update' #Es el equivalente a put
  put '/product/:id', to: 'products#update' #Es el equivalente a put
  
  delete 'product/:id', to: 'products#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
