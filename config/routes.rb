Rails.application.routes.draw do
  resources :notes do
    get :today, on: :collection
  end

  devise_for :users

  root to: 'notes#today'
end
