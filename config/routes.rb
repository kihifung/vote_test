Rails.application.routes.draw do
  resources :candidates do 
    member do
      post :vote
    end


  end  
  
  resources :pages do
    collection do
      get :operate, to: "pages#operate"
      get :result, to: "pages#result"
    end
  end  

end
