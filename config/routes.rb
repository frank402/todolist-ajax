Rails.application.routes.draw do
  root "todos#index"
  resources :todos do
    collection do
      get :load
    end
    member do
      post :toggle_check
    end
  end  
end
