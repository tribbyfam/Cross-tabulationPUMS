Rails.application.routes.draw do
  resources :boros
  resources :pums do
    collection { post :import }
  end 

  root to: 'static#homepage'

  resources :dcp_pumas
  get 'pums_agegroups', to: 'pums#pums_agegroups' 

  get 'dcp_pumas_nativity', to: 'dcp_pumas#dcp_pumas_nativity' 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
