Rails.application.routes.draw do
  root :to => 'candidates#index'
  
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
