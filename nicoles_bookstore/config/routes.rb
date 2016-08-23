Rails.application.routes.draw do

  get 'books/index'

  get 'books/show'

  get 'books/new'

  post 'books/create'

  get 'books/edit'

  put 'books/update'

  get 'books/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
