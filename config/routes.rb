Rails.application.routes.draw do
  
  resources :types do
  	resources :notes
  end
 
  root 'types#index'
end