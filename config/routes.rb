Rails.application.routes.draw do
  devise_for :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'blog/articles#index', as: :home

  namespace :authors do
  	resources :articles
  end

  scope module: 'blog' do
	get 'about' => 'pages#about', as: :about
	get 'articles' => 'articles#index', as: :articles
	get 'articles/:id' => 'articles#show', as: :article
  end

end
