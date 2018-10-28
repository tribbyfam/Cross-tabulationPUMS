Rails.application.routes.draw do
  resources :pums do
    collection { post :import }
  end 

  root to: 'static#homepage'

  resources :dcp_pumas

 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
