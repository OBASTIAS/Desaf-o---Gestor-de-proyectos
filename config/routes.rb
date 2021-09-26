Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/new', to: 'projects#new'
 
  post 'projects', to: 'projects#create'
  root 'projects#index'

end
