Rails.application.routes.draw do
  get 'events/index'
  get 'users/index'
  resources :users, only:  [:new, :create, :show]
end
