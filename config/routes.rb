Rails.application.routes.draw do
  resources :candidates do 
    member do
      post :vote
    end
    collection do
      get :operate
      get :result
    end

  end  
end
