Rails.application.routes.draw do
  # devise_for :users
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
devise_scope :user do
get '/top', to: 'top#new'
post '/top', to: 'top#create'
end

get "/rankings" => "rankings#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


