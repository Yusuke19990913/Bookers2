Rails.application.routes.draw do
  get 'home/about' => "homes#about" ,as: "about"
  get 'home/top' => "homes#top"
  devise_for :users
  root to:'homes#top'
  resources :books, only: [:new, :index, :show,:create,:destroy,:edit,:update] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :users,only:[:show, :edit,:index,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
