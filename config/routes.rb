Rails.application.routes.draw do
  resources :posts
  resources :relationships, only: [:create, :destroy]

  # devise_for :users
  devise_for :admins, controllers: {
  sessions: 'admins/sessions',
  passwords: 'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:'users/sessions',
  passwords:'users/passwords',
  registrations:'users/registrations'
}
devise_scope :user do
get '/top', to: 'top#new'
post '/top', to: 'top#create'
end

resources :users, only: [:show, :edit, :update] do
end

resources :users do
  get '/likes' => 'users#likes'
  member do
    get :following
    get :followers
  end
end

#get "/places" => "places#index"
#get 'places/:id' => 'places#show'

resources :places, :only => [:index, :show]

root "places#index"

get "/abouts" => "abouts#index"
root "abouts#index"

get "/mycourse"  => "courses#index", as: "mycourse"
get "/mydriving" => "driving_ranges#index", as: "mydriving_ranges"
get "/myshop" => "shops#index", as: "myshop"

root 'user#index'

root "posts#index"
resources :places do
  resources :likes
end


# #Administrators::~~DeviseController
#  devise_for :admins, controllers: {
#     sessions: 'administrators/sessions',
#     registrations: 'administrators/registrations'
#   }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


