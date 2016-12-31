Rails.application.routes.draw do
  get 'about/index'

  root 'topics#index'
  resources :topics do
    member do
      post 'upvote'
      delete 'downvote'
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
