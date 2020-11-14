Rails.application.routes.draw do
  get 'lists/destroy'
  get    'login'          => 'session#new'
  post   'login'          => 'session#create'
  delete 'logout'         => 'session#destroy'
  get   'share'          => 'lists#share'
  get    'shared_to_me'   => 'lists#shared_to_me'
  get    'shared_to_me/:id' => 'lists#shared_values'
  root 'main#index'
  resources :users
  resources :lists do
    resources :spendings
  end
end
