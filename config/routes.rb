Rails.application.routes.draw do
  root 'users#index'

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  resources :users
  post 'upload_image' => 'users#upload_image'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
