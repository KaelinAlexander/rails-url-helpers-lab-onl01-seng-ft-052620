Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get 'activate/:id', to: 'students#activate'
end
