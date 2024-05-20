Rails.application.routes.draw do
  get 'hobbies/create'
  get 'users/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
 post 'users',to: "users#create"
 get 'users',to: "users#index"
 get 'sort',to: "users#sort"
 get 'search',to: "users#search"

 post 'hobbies/:id',to: "hobbies#create"

  # Defines the root path route ("/")
  # root "posts#index"
end
