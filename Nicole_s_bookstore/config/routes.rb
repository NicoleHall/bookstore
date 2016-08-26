Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :locations, only: [:show]
  get 'search', to: 'books#search'
  post 'search_result', to: 'books#search_result'
  get 'search_result', to: 'books#search_result'
  root 'locations#inventory'
end
