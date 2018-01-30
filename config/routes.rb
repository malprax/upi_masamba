Rails.application.routes.draw do
  resources :buildings do
    collection do
      post :import
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "buildings#index"
end
