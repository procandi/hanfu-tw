Rails.application.routes.draw do
  resources :serials
  resources :votes
  root 'welcome#index'
  get 'result' => 'welcome#result'
  post 'result' => 'welcome#result'
  get 'check' => 'welcome#check'
  post 'check' => 'welcome#check'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
