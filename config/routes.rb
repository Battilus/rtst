Rails.application.routes.draw do
  devise_for :users
  root to: 'web/common/articles#blog'
  scope module: :web do
    namespace :admin do
      resources :articles
    end
    scope module: :common do
      resources :articles, only: [:index, :show]
      get '/blog', to:'articles#blog'
      get '/blog/:id', to: 'articles#show_article', as: 'show_article'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end