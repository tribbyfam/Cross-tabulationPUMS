Rails.application.routes.draw do
  resources :boros
  resources :pums do
    collection { post :import }
  end 

  root to: 'static#homepage'

  resources :dcp_pumas
  get 'pums_agegroups', to: 'pums#pums_agegroups' 

  get 'dcp_pumas_nativity', to: 'dcp_pumas#dcp_pumas_nativity'
  get 'dcp_pumas_age65', to: 'dcp_pumas#dcp_pumas_age65' 
  get 'dcp_pumas_mutu', to: 'dcp_pumas#dcp_pumas_mutu' 

  get 'boros_nativity', to: 'boros#boros_nativity' 
  get 'boros_age65', to: 'boros#boros_age65'
  get 'boros_mutu', to: 'boros#boros_mutu'
  get 'about', to: 'static#about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
