Rails.application.routes.draw do
  resources :notes, only: [:index, :create, :show,:destroy, :update]
  post 'search_note', to: 'notes#search'
  get 'fetch_data', to: 'notes#fetch_data'
end
