Rails.application.routes.draw do
  resources :users
  resources :reports
  get '/report_mark/:id', to: 'reports#add_mark', as: 'report_mark'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
