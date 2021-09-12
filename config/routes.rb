Rails.application.routes.draw do
  resources :candidates do 
    member do
      post :vote
      get :result, to: "candidates#result"
      post :show, to: "candidates#show"

    end
  end  
end
