Rails.application.routes.draw do
  get 'about', to: 'pages#info'

  get 'contact', to: 'pages#contact'

  root to: 'ideas#index'
  #root to: redirect('/ideas')

  get 'ideas/hello', controller: :ideas, action: :hello
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
