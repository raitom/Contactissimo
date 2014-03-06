Contactissimo::Application.routes.draw do
  root 'contact#index'
  resources :contact
end
