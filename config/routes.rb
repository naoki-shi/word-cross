Rails.application.routes.draw do
  get 'main/step1'

  get 'function/step1'

  root 'home#top'
  get '/about' => 'home#about'
    
  get '/settings' => 'home#settings'
  get '/settings/words' => 'words#index'
  post '/settings/words/create' => 'words#create'
  
    
  resources :memos, only: [:destroy]  
  post '/memos/create' => 'memos#create'
  get '/memos/index' => 'memos#indexu'
  get '/settings/memos' => 'memos#index'
  
    
  post '/step1' => 'main#step1'
  post '/step2' => 'main#step2'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
