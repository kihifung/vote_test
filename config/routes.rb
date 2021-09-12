Rails.application.routes.draw do
  resources :candidates do 
    member do
      post :vote
    end
    get :result, to: "candidates#result"
  end  
end
