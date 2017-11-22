Rails.application.routes.draw do
  get 'uploads/new'

  resources :pages
  # resources :uploads#, controller: 'trix/uploads'
  scope module: :trix_on_rails do
  	 resources :uploads
  end
  root :to => "pages#index"
    # root 'uploads#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

