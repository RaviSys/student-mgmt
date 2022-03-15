Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  # resources :students

  namespace :admin do 
    resources :students
    resources :projects
    resources :courses
    resources :blogs
    get 'dashboard' => 'dashboard#index'
  end
end
