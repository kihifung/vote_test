Rails.application.routes.draw do
  root :to => 'candidates#index'
  
  resources :candidates do 
    member do
      post :vote
    end
    collection do
      post :operate
      get :result
      get :poll
      # get :show, to: 'candidates#show'
    end

  end  
end
