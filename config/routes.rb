Rails.application.routes.draw do
  get 'main/step1'

  get 'function/step1'

  root 'home#top'
  get '/about' => 'home#about'
  get '/home/keywordManual' => 'home#keywordManual'
    
  get '/settings' => 'home#settings'
  get '/settings/words' => 'words#index'
  post '/settings/words/create' => 'words#create'
  get '/settings/keywords' => 'keyword#index'
  
    
  resources :memos, only: [:destroy, :edit, :update] 
  post '/memos/create' => 'memos#create'
  get '/memos/index' => 'memos#indexu'
  get '/settings/memos' => 'memos#index'
  

  resources :keyword, only: [:destroy]
  post '/step1' => 'main#step1'
  post '/step1-NoKey' => 'main#step1-NoKey'
  get '/step1-NoKey' => 'main#step1-NoKey'
  post '/step2' => 'main#step2'

    
  get '/201303053/tickets' => 'admin#tickets'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
