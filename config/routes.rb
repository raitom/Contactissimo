Contactissimo::Application.routes.draw do
  root 'contacts#index'
  resources :contacts
  resources :adresses
end
