Rails.application.routes.draw do
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

get "/places" => "places#index"
root "places#index"

get "/abouts" => "abouts#index"
root "abouts#index"

get "/courses" => "courses#index"
root  "courses#index"

get "/driving_ranges" => "driving_ranges#index"
root  "driving#index"

get "/shops" => "shops#index"
root  "shops#index"

# #Administrators::~~DeviseController
#  devise_for :admins, controllers: {
#     sessions: 'administrators/sessions',
#     registrations: 'administrators/registrations'
#   }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


